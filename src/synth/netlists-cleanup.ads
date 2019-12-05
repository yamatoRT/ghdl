--  Netlist cleanup.
--  Copyright (C) 2019 Tristan Gingold
--
--  This file is part of GHDL.
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
--  MA 02110-1301, USA.

package Netlists.Cleanup is
   --  Remove instances of module M whose outputs are not connected.
   --  Their inputs will be deconnected, which can result in new instances
   --  that are also removed.
   procedure Remove_Unconnected_Instances (M : Module);

   --  Remove Id_Output gates.
   procedure Remove_Output_Gates (M : Module);
end Netlists.Cleanup;
