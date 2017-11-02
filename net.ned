//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

//package off_the_grid;
//
// TODO documentation
//
simple people
{
    gates:
        input wifi_in;
        output wifi_out;
}

//
// TODO documentation
//
simple radio
{
    gates:
        //input wifi_in1;
        input radio_in1;
        //output wifi_out1;
        output radio_out1;
        //input wifi_in2;
        input radio_in2;
        //output wifi_out2;
        output radio_out2;
}

//
// TODO documentation
//
simple grid
{
    gates:
        input wifi_in;
        output wifi_out;
}

//
// TODO documentation
//
network net
{
    @display("bgb=577,292");
    submodules:
        grid: grid {
            @display("p=493,257");
        }
        people: people {
            @display("p=51,47");
        }
        radio: radio {
            @display("p=379,62");
        }
        converter1: converter {
            @display("p=229,52");
        }
        converter2: converter {
            @display("p=459,116");
        }
    connections:
        people.wifi_out --> converter1.wifi_in;
        converter1.radio_out --> radio.radio_in1;
        radio.radio_out2 --> converter2.radio_in;
        converter2.wifi_out --> grid.wifi_in;
        grid.wifi_out --> converter2.wifi_in;
        converter1.wifi_out --> people.wifi_in;
        converter2.radio_out --> radio.radio_in2;
        radio.radio_out1 --> converter1.radio_in;
        //converter2.radio_out --> radio.wifi_in;
        //radio.wifi_out --> converter1.radio_in;
}

//
// TODO documentation
//
simple converter
{
    gates:
        input wifi_in;
        input radio_in;
        output wifi_out;
        output radio_out;
}

