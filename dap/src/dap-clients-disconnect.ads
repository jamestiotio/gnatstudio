------------------------------------------------------------------------------
--                               GNAT Studio                                --
--                                                                          --
--                        Copyright (C) 2023, AdaCore                       --
--                                                                          --
-- This is free software;  you can redistribute it  and/or modify it  under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  This software is distributed in the hope  that it will be useful, --
-- but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- --
-- TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public --
-- License for  more details.  You should have  received  a copy of the GNU --
-- General  Public  License  distributed  with  this  software;   see  file --
-- COPYING3.  If not, go to http://www.gnu.org/licenses for a complete copy --
-- of the license.                                                          --
------------------------------------------------------------------------------

--  Concrete implementation of the DAP 'disconnect' request

package DAP.Clients.Disconnect is

   procedure Send_Disconnect_Request
     (Client             : in out DAP.Clients.DAP_Client'Class;
      Terminate_Debuggee : Boolean);
   --  Send a DAP 'disconnect' request.
   --  Terminate_Debuggee indicates whether the debuggee should be terminated
   --  when the debugger is disconnected if supported. If unspecified, the
   --  debug adapter is free to do whatever it thinks is best.

end DAP.Clients.Disconnect;