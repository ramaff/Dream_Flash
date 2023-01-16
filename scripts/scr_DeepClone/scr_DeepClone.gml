// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DeepCloneArray(s){
  return array_map(s,function(e){
       if( is_array(e) ){ return DeepCloneArray(e); }
       else if( is_struct(e) ){ return DeepCloneStruct(e); }
       return e;
  });
}

function DeepCloneStruct(s){
    return array_map(
        variable_struct_get_names(s),
        method({ctx: s},function(nm){
            var e = ctx[$ nm];
            if( is_array(e) ){ return DeepCloneArray(e); }
            else if( is_struct(e) ){ return DeepCloneStruct(e); }
            return e;
        })
    );
}

function DeepClone(s){
    if( is_array(s) ){ return DeepCloneArray(s);}
    else if( is_struct(s) ){ return DeepCloneStruct(s);}
    return s;
}