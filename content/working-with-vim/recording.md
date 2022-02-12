+++
title = "Recording"
date = "2020-02-03"
+++

# Recording and Playback

See `:help recording`

What other editors call macros, Vim calls recording. It is a way to record and playback a set of commands. A recording is simply saving the commands you type to a register.

Use `qa` to start recording to named register `a`. You will see in the bottom left corner `recording @a`.

You now perform the actions you want, and when done press `q` to stop recording.

Replay back the commands using `@a`, this replays everything you did while recording.

Use `@@` to repeat the previous replay, you can combine with a count so `3@@` will repeat previous replay 3 times, or you can use `3@a` to repeat.

Recording example

💡Your macro just duplicates your commands, so make sure you end/start at the right spot. Basically, you want to start all macros at the start of a line, and end at the start of the next line. This helps when repeating.

## Recording in Register

Since recording are saved to a register, and registers persist between Vim sessions. Your recordings persist between Vim sessions.

As mentioned above, your recordings are stored as commands in the registers. This allows you to see what is recorded by using the `:registers` command to view all registers. Additionally, if you copy the characters that make up a command to a register, you can replay them.

For example, copy the text `oText from Register` to a register and replay. Note: the `o` is for append after, it is the command to enter into INSERT mode.

Here's the example yanking the above text to register using `"byy`, confirming the text is there, and then replaying using `@b`.

Recording example
