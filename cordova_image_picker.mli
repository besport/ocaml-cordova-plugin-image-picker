(* -------------------------------------------------------------------------- *)
type options = private Ojs.t

val create_options :
  ?maximum_images_count:(int [@js.default 15])    ->
  ?width:int                                      ->
  ?height:int                                     ->
  ?quality:(int [@js.default 100])                ->
  unit                                            ->
  options
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val get_pictures :
  (string array -> unit)                          ->
  (string -> unit)                                ->
  ?opt:(options [@js.default create_options ()])  ->
  unit                                            ->
  unit
[@@js.global "window.imagePicker.getPictures"]
(* -------------------------------------------------------------------------- *)
