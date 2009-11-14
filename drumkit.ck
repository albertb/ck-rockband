Hid hi;

0 => int device;
if (me.args()) me.arg(0) => Std.atoi => device;
if (!hi.openJoystick(device)) me.exit();

SndBuf red => dac;
"data/890-35_ltibbits_Rock_Drum_Kit/16298_ltibbits_snare_1_high_vol.wav" => red.read;

SndBuf yellow => dac;
"data/890-35_ltibbits_Rock_Drum_Kit/16308_ltibbits_snare_6_tight_open_high_vol.wav" => yellow.read;

SndBuf blue => dac;
"data/889-49_ltibbits_High_Quality_Cymbals/16266_ltibbits_HH_A_Custom_closed_hard.wav" => blue.read;

SndBuf green => dac;
"data/889-49_ltibbits_High_Quality_Cymbals/16258_ltibbits_crash_HHXplosion_18_high_vol.wav" => green.read;

SndBuf kick => dac;
"data/890-35_ltibbits_Rock_Drum_Kit/16290_ltibbits_kick2_high_vol.wav" => kick.read;

fun void play(SndBuf buf) {
  0 => buf.pos;
}

while(true) {
  hi => now;

  HidMsg msg;
  while (hi.recv(msg)) {
    if (msg.isButtonDown()) {
      if (msg.which == 12) {
        spork ~ play(red);
      } else if (msg.which == 14) {
        spork ~ play(yellow);
      } else if (msg.which == 13) {
        spork ~ play(blue);
      } else if (msg.which == 11) {
        spork ~ play(green);
      } else if (msg.which == 8) {
        spork ~ play(kick);
      }
    }
  }
}
