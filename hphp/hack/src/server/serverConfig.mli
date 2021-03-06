(**
 * Copyright (c) 2014, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "hack" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)

type t = {
  load_script         : string option;
  load_script_timeout : int;
  (* Configures only the workers. Workers can have more relaxed GC configs as
   * they are short-lived processes *)
  gc_control          : Gc.control;
  tc_options          : TypecheckerOptions.t;
}

val load : Relative_path.t -> t

val default_config : t

val load_script         : t -> string option
val load_script_timeout : t -> int
val gc_control          : t -> Gc.control
val typechecker_options : t -> TypecheckerOptions.t
