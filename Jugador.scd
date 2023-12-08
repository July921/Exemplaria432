(OSCdef.new(
	\freq1,
	{arg msg;
		var freqValue = msg[1].asInteger;
		[msg].postln;
		Synth(\freqSynth1, [\freq, freqValue]);
	},
	'/freq1',
	nil, 7000,
);)

(
SynthDef(\freqSynth1, {
    arg freq = 1000;
	var amp = LinLin.kr(freq, 20, 20000, 0.1, 0.001);
    var sig;
    sig = SinOsc.ar(freq, 0, 0.1) * amp;
    sig = EnvGen.kr(Env.perc, doneAction: 2) * sig;
    Out.ar([0, 1], sig);
}).add;
)

(OSCdef.new(
	\freq2,
	{arg msg;
		var freqValue = msg[1].asInteger;
		[msg].postln;
		Synth(\freqSynth2, [\freq, freqValue]);
	},
	'/freq2',
	nil, 7000,
);)

(
SynthDef(\freqSynth2, {
    arg freq = 1000;
	var amp = LinLin.kr(freq, 20, 20000, 0.05, 0.0005);
    var sig;
	sig = LFPulse.ar(freq, 0, 0) * amp;
    sig = EnvGen.kr(Env.perc, doneAction: 2) * sig;
    Out.ar([0, 1], sig);
}).add;
)

(OSCdef.new(
	\freq3,
	{arg msg;
		var freqValue = msg[1].asInteger;
		[msg].postln;
		Synth(\freqSynth3, [\freq, freqValue]);
	},
	'/freq3',
	nil, 7000,
);)

(
SynthDef(\freqSynth3, {
    arg freq = 1000;
	var amp = LinLin.kr(freq, 20, 20000, 0.1, 0.001);
    var sig;
    sig = LFSaw.ar(freq, 0, 0.1) * amp;
    sig = EnvGen.kr(Env.perc, doneAction: 2) * sig;
    Out.ar([0, 1], sig);
}).add;
)

(OSCdef.new(
	\botones,
	{arg msg;
		[msg].postln;
		Synth(\freqSynthbtn);
	},
	'/botones',
	nil, 7000,
);)

(
SynthDef(\freqSynthbtn, {
    arg freq = 1000;
    var sig;
    sig = SinOsc.ar(freq, 0, 0.1);
    sig = EnvGen.kr(Env.perc, doneAction: 2) * sig;
    Out.ar([0, 1], sig);
}).add;
)

(OSCdef.new(
	\exp,
	{arg msg;
		[msg].postln;
		Synth(\freqSynthexp);
	},
	'/exp',
	nil, 7000,
);)

(
SynthDef(\freqSynthexp, {
    arg freq = 0.5;
    var sig;
	sig = BrownNoise.ar(freq, 0);
    sig = EnvGen.kr(Env.perc, doneAction: 2) * sig;
    Out.ar([0, 1], sig);
}).add;
)

(OSCdef.new(
	\vida,
	{arg msg;
		[msg].postln;
		Synth(\freqSynthvida);
	},
	'/vida',
	nil, 7000,
);)

(SynthDef(\freqSynthvida, {
    arg freq = 1000,
        dur = 0.5;
    var sig;
    sig = FBSineC.ar(freq, freq * 1.5, 0.1);
    sig = EnvGen.kr(Env.perc, doneAction: 2, timeScale: dur) * sig;
    sig = sig * LFNoise0.kr(5).range(0.8, 1.0);
    Out.ar([0, 1], sig);
}).add;)

(OSCdef.new(
	\grama,
	{arg msg;
		[msg].postln;
		Synth(\freqSynthgran);
	},
	'/grama',
	nil, 7000,
);)

(
SynthDef(\freqSynthgran, {
    arg freq = 500,
        dur = 0.5;
    var sig;
	sig = SinOsc.ar(freq + SinOsc.kr(0.1).range(10, 20), 0, 0.2);
    sig = EnvGen.kr(Env.perc, doneAction: 2, timeScale: dur) * sig;
    sig = Mix([sig, CombC.ar(sig, 0.2, 0.2, 2)]);
    sig = sig * LFNoise0.kr(5).range(0.8, 1.0);
    Out.ar([0, 1], sig);
}).add;
)