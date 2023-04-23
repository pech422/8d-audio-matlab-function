% Program created for the Audio Competition - Aerospace Engineering - UPV
% Alvaro Perez Pecharroman - Last update: 17/04/2023
% It is necessary the use of headphones!!

[VA_Stars,Fs_Stars] = audioread('Stars.mp3');
[VA_Taps,Fs_Taps] = audioread('Taps.wav');
[VA_Clock,Fs_Clock] = audioread('Clock.wav');
[VA_Drum,Fs_Drum] = audioread('Drum.wav');

while true
    fprintf('Welcome to the ultimate 8-D experience (remember to use headphones)\n Chose one option:\n');
    fprintf('\t 1- Star wars \n');
    fprintf('\t 2- Trumpet \n');
    fprintf('\t 3- Clock \n');
    fprintf('\t 4- Drum \n');
    fprintf('\t 0- Quit \n');

    o = input('Your choice: ');


    switch o
        case 0
            break;
        case 1 
            sound(audio8D(VA_Stars,Fs_Stars,1),Fs_Stars);
        case 2
            sound(audio8D(VA_Taps,Fs_Taps,1),Fs_Taps);
        case 3 
            sound(audio8D(VA_Clock,Fs_Clock,1),Fs_Clock);
        case 4
            sound(audio8D(VA_Drum,Fs_Drum,1),Fs_Drum);
        otherwise
            error('Error in the input');
    end
end