/*
 *    Copyright (C) 2013 Venom authors and contributors
 *
 *    This file is part of Venom.
 *
 *    Venom is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    Venom is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with Venom.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace Venom {
  public class Message : GLib.Object {
    public unowned Contact sender {get; set;}
    public string message {get; set;}
    public DateTime time_sent { get; set; }

    public Message(Contact? sender, string message) {
      this.sender = sender;
      this.message = message;
      time_sent = new DateTime.now_local();
    }

    public Message.with_time(Contact? sender, string message, DateTime time) {
      this.sender = sender;
      this.message = message;
      time_sent = time;
    }

  }
}
