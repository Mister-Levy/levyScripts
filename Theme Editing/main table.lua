--[[
  about       :
  description :
  donation    :
  link        :
  noindex     : true
  screenshot  :
  version     : 0.1
  author      : Mister Levy
  changelog   :
  metapackage :
  provides    :
]]--

main_table = { 
  [ 'tcp' ] = {
        -- [ 'dragdropinfo' ]             = { [ 'desc' ]        = 'Sets additional offsets r' .. 'elating to drag/drop. Fir' .. 'st value is additional in' .. 'dentation for sibling tra' .. 'ck. Second value is addit' .. 'ional indentation for chi' .. 'ld track (used for drawin' .. 'g and for mouse hit testi' .. 'ng whether a track dragge' .. 'd will be a child track).' , 
        --                                       [ 'attributes' ]  = { [ '' ]                                = '' 
        --                                                           }  , 
        --                                       [ 'images' ]      = {
        --                                                           } , 
        --                                       [ 'reapertheme' ] = {} 
        --                                     } , 
        [ 'env' ]                      = { [ 'desc' ]        = 'Envelope/automation mode ' .. 'button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_env' ]                       = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_env_read' ]                  = { [ 'desc' ]    =  '(sliced-button): Alternate image names: transport_automation_read' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_env_touch' ]                 = { [ 'desc' ]    =  '(sliced-button): Alternate image names: transport_automation_touch' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_env_write' ]                 = { [ 'desc' ]    =  '(sliced-button): Alternate image names: transport_automation_write' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_env_latch' ]                 = { [ 'desc' ]    =  '(sliced-button): Alternate image names: transport_automation_latch' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_env_preview' ]               = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_latch.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'folder' ]                   = { [ 'desc' ]        = 'Folder button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_folder_off' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_folder_on' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_folder_last' ]               = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'folder_start' ]                    = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'folder_indent' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'folder_end' ]                      = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    
                                                                    [ 'tcp_folderbg' ]                    = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_folderbgsel' ]                 = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'foldercomp' ]               = { [ 'desc' ]        = 'Folder compact button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_fcomp_off' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fcomp_small' ]               = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fcomp_tiny' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fx' ]                       = { [ 'desc' ]        = 'FX button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_fx_norm' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fx_dis' ]                    = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fx_empty' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fxoff_v' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fxon_v' ]                    = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fxempty_v' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fxoff_h' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fxon_h' ]                    = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fxempty_h' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxbyp' ]                    = { [ 'desc' ]        = 'FX bypass button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxembed' ]                  = { [ 'desc' ]        = 'FX Embed area rectangle (' .. 'if omitted fx embed area ' .. 'is shared with fx paramet' .. 'er list)' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.fxembedheader.color' ]                    = 'FX Embed Header Color'  
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_fxembed_header_bg_h' ]         = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxembed_header_bg_v' ]         = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxembed_header_float' ]        = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxembed_header_minimize' ]     = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxin' ]                     = { [ 'desc' ]        = 'Input-FX button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_fx_in_norm' ]                = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_fx_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_fx_in_empty' ]               = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_fx_empty.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxparm' ]                   = { [ 'desc' ]        = 'FX parameter list' , 
                                              [ 'attributes' ]  = { [ '[font]tcp.fxparm.font' ]                             = 'FX parameter list font (f' .. 'irst coordinate is font i' .. 'ndex, 1-8 user, 0=main, -' .. '1=volpan). Third and four' .. 'th parameters, if nonzero' .. ', define the minimum and ' .. 'maximum column width. The' .. ' fifth parameter specifie' .. 's line spacing adjustment'  ,
                                                                    [ '[margin]tcp.fxparm.margin' ]                         = 'FX parameter list margins'  .. ' (l,t,r,b) + alignment (a' .. 'lignment is 0 for left, 0' .. '.5 for center, 1 for righ' .. 't)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_fxparm_bg' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_byp' ]                  = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_empty' ]                = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_fx_byp' ]               = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_fx_norm' ]              = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_fx_off' ]               = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_knob' ]                 = { [ 'desc' ]    =  '                                     ' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_knob_bg' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_fxparm_knob_bg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_knob_stack' ]           = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to mcp_fxparm_knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_norm' ]                 = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_fxparm_off' ]                  = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'io' ]                       = { [ 'desc' ]        = 'IO button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_io' ]                        = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_io_dis' ]                    = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_io_r' ]                      = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_io_s' ]                      = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_io_s_r' ]                    = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_io_r_dis' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_io_s_dis' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_io_s_r_dis' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'label' ]                    = { [ 'desc' ]        = 'Track name text' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.label.color' ]                            = 'Track name text colors - ' .. 'First four coordinates: f' .. 'oreground - Second four c' .. 'oordinates: background' ,
                                                                    [ '[font]tcp.label.font' ]                              = 'Track name text font (fir' .. 'st coordinate is font ind' .. 'ex, 1-8 user, 0=main, -1=' .. 'volpan)' ,
                                                                    [ '[margin]tcp.label.margin' ]                          = 'Track name text margins (' .. 'l,t,r,b) + alignment (ali' .. 'gnment is 0 for left, 0.5' .. ' for center, 1 for right)'  ,
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_namebg' ]                      = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'meter' ]                    = { [ 'desc' ]        = 'Meter outer coordinates' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.meter.inputlabel.color' ]                 = 'First four coordinates: m' .. 'eter input source label t' .. 'ext color' ,
                                                                    [ '[color]tcp.meter.inputlabelbox.color' ]              = 'First four coordinates:' .. ' background for meter inp' .. 'ut source label - Second ' .. 'four coordinates: foregro' .. 'und/border color' ,
                                                                    [ '[color]tcp.meter.readout.color' ]                    = 'non-clipped peak text col' .. 'or - Second four coordina' .. 'tes: clipped peak text co' .. 'lor' ,
                                                                    [ '[color]tcp.meter.rmsreadout.color' ]                 = 'First four coordinates: R' .. 'MS/LUFS mode readout text' .. ' color' ,
                                                                    [ '[color]tcp.meter.scale.color.lit.bottom' ]           = 'First four coordinates:' .. ' meter scale, lit/bottom,' .. ' foreground - Second four' .. ' coordinates: shadow colo' .. 'r' ,
                                                                    [ '[color]tcp.meter.scale.color.lit.top' ]              = 'First four coordinates:' .. ' meter scale, lit/top, fo' .. 'reground - Second four co' .. 'ordinates: shadow color' ,
                                                                    [ '[color]tcp.meter.scale.color.unlit.bottom' ]         = 'First four coordinates:' .. ' meter scale, unlit/botto' .. 'm, foreground - Second fo' .. 'ur coordinates: shadow co' .. 'lor' ,
                                                                    [ '[color]tcp.meter.scale.color.unlit.top' ]            = 'First four coordinates:' .. ' meter scale, unlit/top, ' .. 'foreground - Second four ' .. 'coordinates: shadow color'  ,
                                                                    [ '[div]tcp.meter.vu.div' ]                             = 'First coordinate: divis'  .. 'ion between channels in m' .. 'eter - Second coordinate:' .. ' division mode: - 0=defau' .. 'lt (increase center divis' .. 'ion as necessary) - 1=cen' .. 'ter, increasing middle by' .. ' 1px max - -1=for all eve' .. 'n division/sizes (uncente' .. 'red possibly) - -2=possib' .. 'ly uneven sized channels' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_vu' ]                          = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'mute' ]                     = { [ 'desc' ]        = 'Mute button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_mute_off' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_mute_on' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pan' ]                      = { [ 'desc' ]        = 'Pan fader/knob' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.pan.color' ]                              = 'Pan fader/knob colors -' .. ' First four coordinates: ' .. 'knob line color - Second ' .. 'four coordinates: fader z' .. 'ero line color' ,
                                                                    [ '[fadermode]tcp.pan.fadermode' ]                      = 'Pan fader/knob: fader v'  .. 's knob mode - First coord' .. 'inate: -1 to prevent knob' .. ', 1 to force knob, 0 for ' .. 'default' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_pan_knob_large' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_large.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_pan_knob_small' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_small.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_pan_knob_stack' ]              = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_pan_knob_stack_1' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack_1.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_pan_knob_stack_2' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack_2.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_panbg' ]                       = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_panbg_vert' ]                  = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_panthumb' ]                    = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_panthumb_vert' ]               = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pan.label' ]                = { [ 'desc' ]        = 'Pan readout text' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.pan.label.color' ]                        = 'Pan readout text colors' .. ' - First four coordinates' .. ': foreground - Second fou' .. 'r coordinates: background'  ,
                                                                    [ '[font]tcp.pan.label.font' ]                          = 'Pan readout text font (fi' .. 'rst coordinate is font in' .. 'dex, 1-8 user, 0=main, -1' .. '=volpan)' ,
                                                                    [ '[margin]tcp.pan.label.margin' ]                      = 'Pan readout text margins '  .. '(l,t,r,b) + alignment (al' .. 'ignment is 0 for left, 0.' .. '5 for center, 1 for right' .. ')' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_pan_label' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'phase' ]                    = { [ 'desc' ]        = 'Phase/polarity button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_phase_norm' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_phase_inv' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'recarm' ]                   = { [ 'desc' ]        = 'Record arm button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_recarm_off' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_recarm_on' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_recarm_auto' ]               = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_recarm_auto_on' ]            = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_recarm_norec' ]              = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_recarm_auto_norec' ]         = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_auto_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'recinput' ]                 = { [ 'desc' ]        = 'Record input text field' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.recinput.color' ]                         = 'Record input text field t' .. 'ext color + background co' .. 'lor' ,
                                                                    [ '[font]tcp.recinput.font' ]                           = 'Record input text field f' .. 'ont (first coordinate is ' .. 'font index, 1-8 user, 0=m' .. 'ain, -1=volpan)' ,
                                                                    [ '[margin]tcp.recinput.margin' ]                       = 'Record input text field m'  .. 'argins (l,t,r,b) + alignm' .. 'ent (alignment is 0 for l' .. 'eft, 0.5 for center, 1 fo' .. 'r right)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_recinput' ]                    = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'recmode' ]                  = { [ 'desc' ]        = 'Record mode button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_recmode_in' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_recmode_out' ]               = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_recmode_off' ]               = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'recmon' ]                   = { [ 'desc' ]        = 'Record monitor mode butto' .. 'n' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'track_monitor_off' ]               = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_monitor_on' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_monitor_auto' ]              = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'sendlist' ]                 = { [ 'desc' ]        = 'TCP send list area (dedic' .. 'ated for sends, optional)' , 
                                              [ 'attributes' ]  = { [ '[font]tcp.sendlist.font' ]                           = 'TCP send list font (first' .. ' coordinate is font index' .. ', 1-8 user, 0=main, -1=vo' .. 'lpan, second is row heigh' .. 't if nonzero). 8th is scr' .. 'ollbar size if nonzero, 7' .. 'th is scrollbar gap size ' .. '(scrollbar size includes ' .. 'this gap).' ,
                                                                    [ '[margin]tcp.sendlist.margin' ]                       = 'TCP send list margins (fi'  .. 'rst coordinate is left, t' .. 'hird is right, fifth is a' .. 'lignment, sixth is scroll' .. ' button size if positive.' .. ' alignment is 0 for left,' .. ' 0.5 for center, 1 for ri' .. 'ght). If TCP, seventh coo' .. 'rdinate is alignment for ' .. 'FX instances. 8th coordin' .. 'ate specifies gap between' .. ' columns, if any.' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_send_knob_stack' ]             = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to mcp_send_knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_sendlist_bg' ]                 = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_bg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_sendlist_empty' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_empty.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_sendlist_knob' ]               = { [ 'desc' ]    =  ': If not found, falls back to mcp_sendlist_knob.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_sendlist_knob_bg' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_knob_bg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_sendlist_meter' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_meter.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_sendlist_midihw' ]             = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_midihw.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_sendlist_mute' ]               = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_mute.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_sendlist_norm' ]               = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'size' ]                     = { [ 'desc' ]        = 'First two coordinates: ' .. 'baseline size - Second tw' .. 'o coordinates: minimum si' .. 'ze' , 
                                              [ 'attributes' ]  = { [ '[margin]tcp.margin' ]                                = 'Inner margins'   
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_bg' ]                          = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_bgsel' ]                       = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_iconbg' ]                      = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_iconbgsel' ]                   = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_iconbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_stereo' ]                    = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_mono' ]                      = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'solo' ]                     = { [ 'desc' ]        = 'Solo button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_solodefeat_on' ]               = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_solo_off' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'track_solo_on' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'trackidx' ]                 = { [ 'desc' ]        = 'Track index' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.trackidx.color' ]                         = 'Track index colors - Firs' .. 't four coordinates: foreg' .. 'round - Second four coord' .. 'inates: background' ,
                                                                    [ '[font]tcp.trackidx.font' ]                           = 'Track index font (first c' .. 'oordinate is font index, ' .. '1-8 user, 0=main, -1=volp' .. 'an)' ,
                                                                    [ '[margin]tcp.trackidx.margin' ]                       = 'Track index margins (l,t,'  .. 'r,b) + alignment (alignme' .. 'nt is 0 for left, 0.5 for' .. ' center, 1 for right)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_idxbg' ]                       = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_idxbg_sel' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'volume' ]                   = { [ 'desc' ]        = 'Volume fader' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.volume.color' ]                           = '- Volume fader colors - F' .. 'irst four coordinates: kn' .. 'ob line color - Second fo' .. 'ur coordinates: fader zer' .. 'o line color' ,
                                                                    [ '[fadermode]tcp.volume.fadermode' ]                   = '- Volume fader: fader vs '  .. 'knob mode - First coordin' .. 'ate: -1 to prevent knob, ' .. '1 to force knob, 0 for de' .. 'fault' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_vol_knob_large' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_large.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_vol_knob_small' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_small.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_vol_knob_stack' ]              = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_vol_knob_stack_1' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to knob_stack_1.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_vol_knob_stack_2' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to knob_stack_2.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_volbg' ]                       = { [ 'desc' ]    =  '                                           ' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_volbg_vert' ]                  = { [ 'desc' ]    =  ': If not found, falls back to mcp_volbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_volthumb' ]                    = { [ 'desc' ]    =  '                                        ' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_volthumb_vert' ]               = { [ 'desc' ]    =  ': If not found, falls back to mcp_volthumb.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'volume.label' ]             = { [ 'desc' ]        = 'Volume readout text' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.volume.label.color' ]                     = '- Volume readout text col' .. 'ors - First four coordina' .. 'tes: foreground - Second ' .. 'four coordinates: backgro' .. 'und' ,
                                                                    [ '[font]tcp.volume.label.font' ]                       = 'Volume readout text font ' .. '(first coordinate is font' .. ' index, 1-8 user, 0=main,' .. ' -1=volpan)' ,
                                                                    [ '[margin]tcp.volume.label.margin' ]                   = 'Volume readout text margi'  .. 'ns (l,t,r,b) + alignment ' .. '(alignment is 0 for left,' .. ' 0.5 for center, 1 for ri' .. 'ght)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_vol_label' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'width' ]                    = { [ 'desc' ]        = 'Width fader/knob' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.width.color' ]                            = 'Width fader/knob colors -' .. ' First four coordinates: ' .. 'knob line color - Second ' .. 'four coordinates: fader z' .. 'ero line color' ,
                                                                    [ '[fadermode]tcp.width.fadermode' ]                    = 'Width fader/knob: fader v'  .. 's knob mode - First coord' .. 'inate: -1 to prevent knob' .. ', 1 to force knob, 0 for ' .. 'default' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_width_knob_large' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_large.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_width_knob_small' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_small.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_wid_knob_stack' ]              = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_wid_knob_stack_1' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack_1.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_wid_knob_stack_2' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack_2.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_widthbg' ]                     = { [ 'desc' ]    =  ': If not found, falls back to tcp_panbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_widthbg_vert' ]                = { [ 'desc' ]    =  ': If not found, falls back to tcp_panbg_vert.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_widththumb' ]                  = { [ 'desc' ]    =  ': If not found, falls back to tcp_panthumb.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_widththumb_vert' ]             = { [ 'desc' ]    =  ': If not found, falls back to tcp_panthumb_vert.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'width.label' ]              = { [ 'desc' ]        = 'Width readout text' , 
                                              [ 'attributes' ]  = { [ '[color]tcp.width.label.color' ]                      = 'Width readout text colors' .. ' - First four coordinates' .. ': foreground - Second fou' .. 'r coordinates: background'  ,
                                                                    [ '[font]tcp.width.label.font' ]                        = 'Width readout text font (' .. 'first coordinate is font ' .. 'index, 1-8 user, 0=main, ' .. '-1=volpan)' ,
                                                                    [ '[margin]tcp.width.label.margin' ]                    = 'Width readout text margin' .. 's (l,t,r,b) + alignment (' .. 'alignment is 0 for left, ' .. '0.5 for center, 1 for rig' .. 'ht)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_wid_label' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } } , 
  [ 'master.tcp' ] = { 
        [ 'env' ]               = { [ 'desc' ]        = 'Envelope/automation mode ' .. 'button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fx' ]                = { [ 'desc' ]        = 'FX button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxbyp' ]             = { [ 'desc' ]        = 'FX bypass button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxembed' ]           = { [ 'desc' ]        = 'FX Embed area rectangle (' .. 'if omitted fx embed area ' .. 'is shared with fx paramet' .. 'er list)' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.fxembedheader.color' ]             = 'FX Embed Header Color'  
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxparm' ]            = { [ 'desc' ]        = 'FX parameter list' , 
                                              [ 'attributes' ]  = { [ '[font]master.tcp.fxparm.font' ]                      = 'FX parameter list font (f' .. 'irst coordinate is font i' .. 'ndex, 1-8 user, 0=main, -' .. '1=volpan). Third and four' .. 'th parameters, if nonzero' .. ', define the minimum and ' .. 'maximum column width. The' .. ' fifth parameter specifie' .. 's line spacing adjustment'  ,
                                                                    [ '[margin]master.tcp.fxparm.margin' ]                  = 'FX parameter list margins'  .. ' (l,t,r,b) + alignment (a' .. 'lignment is 0 for left, 0' .. '.5 for center, 1 for righ' .. 't)' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'io' ]                = { [ 'desc' ]        = 'IO button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'master_tcp_io' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'label' ]             = { [ 'desc' ]        = 'Track name text' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.label.color' ]                     = 'Track name text colors - ' .. 'First four coordinates: f' .. 'oreground - Second four c' .. 'oordinates: background' ,
                                                                    [ '[font]master.tcp.label.font' ]                       = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]master.tcp.label.margin' ]                   = 'Track name text margins (' .. 'l,t,r,b) + alignment (ali' .. 'gnment is 0 for left, 0.5' .. ' for center, 1 for right)'  ,
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_main_namebg' ]                 = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_main_namebg_sel' ]             = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'meter' ]             = { [ 'desc' ]        = 'Meter outer coordinates' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.meter.readout.color' ]             = 'non-clipped peak text col' .. 'or - Second four coordina' .. 'tes: clipped peak text co' .. 'lor' ,
                                                                    [ '[color]master.tcp.meter.rmsreadout.color' ]          = 'First four coordinates: R' .. 'MS/LUFS mode readout text' .. ' color' ,
                                                                    [ '[color]master.tcp.meter.scale.color.lit.bottom' ]    = 'First four coordinates:' .. ' meter scale, lit/bottom,' .. ' foreground - Second four' .. ' coordinates: shadow colo' .. 'r' ,
                                                                    [ '[color]master.tcp.meter.scale.color.lit.top' ]       = 'First four coordinates:' .. ' meter scale, lit/top, fo' .. 'reground - Second four co' .. 'ordinates: shadow color' ,
                                                                    [ '[color]master.tcp.meter.scale.color.unlit.bottom' ]  = 'First four coordinates:' .. ' meter scale, unlit/botto' .. 'm, foreground - Second fo' .. 'ur coordinates: shadow co' .. 'lor' ,
                                                                    [ '[color]master.tcp.meter.scale.color.unlit.top' ]     = 'First four coordinates:' .. ' meter scale, unlit/top, ' .. 'foreground - Second four ' .. 'coordinates: shadow color'  ,
                                                                    [ '[div]master.tcp.meter.vu.div' ]                      = 'First coordinate: divis'  .. 'ion between channels in m' .. 'eter - Second coordinate:' .. ' division mode: - 0=defau' .. 'lt (increase center divis' .. 'ion as necessary) - 1=cen' .. 'ter, increasing middle by' .. ' 1px max - -1=for all eve' .. 'n division/sizes (uncente' .. 'red possibly) - -2=possib' .. 'ly uneven sized channels'  
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'mono' ]              = { [ 'desc' ]        = 'Mono button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'mute' ]              = { [ 'desc' ]        = 'Mute button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pan' ]               = { [ 'desc' ]        = 'Pan fader/knob' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.pan.color' ]                       = 'Pan fader/knob colors -' .. ' First four coordinates: ' .. 'knob line color - Second ' .. 'four coordinates: fader z' .. 'ero line color' ,
                                                                    [ '[fadermode]master.tcp.pan.fadermode' ]               = 'Pan fader/knob: fader v'  .. 's knob mode - First coord' .. 'inate: -1 to prevent knob' .. ', 1 to force knob, 0 for ' .. 'default' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_master_pan_label' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_pan_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pan.label' ]         = { [ 'desc' ]        = 'Pan readout text' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.pan.label.color' ]                 = 'Pan readout text colors' .. ' - First four coordinates' .. ': foreground - Second fou' .. 'r coordinates: background'  ,
                                                                    [ '[font]master.tcp.pan.label.font' ]                   = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]master.tcp.pan.label.margin' ]               = 'Pan readout text margins '  .. '(l,t,r,b) + alignment (al' .. 'ignment is 0 for left, 0.' .. '5 for center, 1 for right' .. ')' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'sendlist' ]          = { [ 'desc' ]        = 'send list (hardware outpu' .. 't list) area' , 
                                              [ 'attributes' ]  = { [ '[font]master.tcp.sendlist.font' ]                    = 'send list area font (firs' .. 't coordinate is font inde' .. 'x, 1-8 user, 0=main, -1=v' .. 'olpan, second is row heig' .. 'ht if nonzero). 8th is sc' .. 'rollbar size if nonzero, ' .. '7th is scrollbar gap size' .. ' (scrollbar size includes' .. ' this gap).' ,
                                                                    [ '[margin]master.tcp.sendlist.margin' ]                = 'send list area margins (f'  .. 'irst coordinate is left, ' .. 'third is right, fifth is ' .. 'alignment, sixth is scrol' .. 'l button size if positive' .. '. alignment is 0 for left' .. ', 0.5 for center, 1 for r' .. 'ight). If TCP, seventh co' .. 'ordinate is alignment for' .. ' FX instances. 8th coordi' .. 'nate specifies gap betwee' .. 'n columns, if any.' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_master_sendlist_bg' ]          = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_sendlist_bg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_master_sendlist_empty' ]       = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_sendlist_empty.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_master_sendlist_knob' ]        = { [ 'desc' ]    =  ': If not found, falls back to tcp_sendlist_knob.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_master_sendlist_meter' ]       = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_sendlist_meter.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_master_sendlist_mute' ]        = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_sendlist_mute.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_master_sendlist_norm' ]        = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_sendlist_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'size' ]              = { [ 'desc' ]        = 'First two coordinates: ' .. 'baseline size - Second tw' .. 'o coordinates: minimum si' .. 'ze' , 
                                              [ 'attributes' ]  = { [ '[margin]master.tcp.margin' ]                         = 'Inner margins'   
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_mainbg' ]                      = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_mainbgsel' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_mainiconbg' ]                  = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_iconbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'tcp_mainiconbgsel' ]               = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_iconbgsel.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'solo' ]              = { [ 'desc' ]        = 'Solo button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'volume' ]            = { [ 'desc' ]        = 'Volume fader' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.volume.color' ]                    = '- Volume fader colors - F' .. 'irst four coordinates: kn' .. 'ob line color - Second fo' .. 'ur coordinates: fader zer' .. 'o line color' ,
                                                                    [ '[fadermode]master.tcp.volume.fadermode' ]            = '- Volume fader: fader vs '  .. 'knob mode - First coordin' .. 'ate: -1 to prevent knob, ' .. '1 to force knob, 0 for de' .. 'fault' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'volume.label' ]      = { [ 'desc' ]        = 'Volume readout text' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.volume.label.color' ]              = '- Volume readout text col' .. 'ors - First four coordina' .. 'tes: foreground - Second ' .. 'four coordinates: backgro' .. 'und' ,
                                                                    [ '[font]master.tcp.volume.label.font' ]                = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]master.tcp.volume.label.margin' ]            = 'Volume readout text margi'  .. 'ns (l,t,r,b) + alignment ' .. '(alignment is 0 for left,' .. ' 0.5 for center, 1 for ri' .. 'ght)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_master_vol_label' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_vol_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'width' ]             = { [ 'desc' ]        = 'Width fader/knob' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.width.color' ]                     = 'Width fader/knob colors -' .. ' First four coordinates: ' .. 'knob line color - Second ' .. 'four coordinates: fader z' .. 'ero line color' ,
                                                                    [ '[fadermode]master.tcp.width.fadermode' ]             = 'Width fader/knob: fader v'  .. 's knob mode - First coord' .. 'inate: -1 to prevent knob' .. ', 1 to force knob, 0 for ' .. 'default' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'tcp_master_wid_label' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_wid_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'width.label' ]       = { [ 'desc' ]        = 'Width readout text' , 
                                              [ 'attributes' ]  = { [ '[color]master.tcp.width.label.color' ]               = 'Width readout text colors' .. ' - First four coordinates' .. ': foreground - Second fou' .. 'r coordinates: background'  ,
                                                                    [ '[font]master.tcp.width.label.font' ]                 = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]master.tcp.width.label.margin' ]             = 'Width readout text margin' .. 's (l,t,r,b) + alignment (' .. 'alignment is 0 for left, ' .. '0.5 for center, 1 for rig' .. 'ht)' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } } , 
  [ 'mcp' ] = { 
        [ 'env' ]                      = { [ 'desc' ]        = 'Envelope/automation mode ' .. 'button' , 
                                              [ 'attributes' ]  = {}  , 
                                              [ 'images' ]      = { [ 'mcp_env' ]                         = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_env_read' ]                    = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_read.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_env_touch' ]                   = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_touch.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_env_write' ]                   = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_write.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_env_latch' ]                   = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_latch.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_env_preview' ]                 = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to mcp_env_latch.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'extmixer.position' ]        = { [ 'desc' ]        = 'Position of extended mixe' .. 'r elements (including FX,' .. ' sends, FX parameters), o' .. 'nly used if extmixer.mode' .. ' is set to [1]' , 
                                              [ 'attributes' ]  = { [ '[mode]mcp.extmixer.mode' ]                           = '(set to [1] to use mcp.ex'  .. 'tmixer.position)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_extmixbg' ]                    = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_extmixbgsel' ]                 = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_extmixbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxlist_bg' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxlist_byp' ]                  = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxlist_empty' ]                = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxlist_norm' ]                 = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxlist_off' ]                  = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxparm_bg' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxparm_byp' ]                  = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxparm_empty' ]                = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxparm_knob' ]                 = { [ 'desc' ]    =  '                                     ' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxparm_knob_bg' ]              = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxparm_knob_stack' ]           = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to mcp_send_knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxparm_norm' ]                 = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fxparm_off' ]                  = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_send_knob_stack' ]             = { [ 'desc' ]    =  '(knob-stack):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_sendlist_bg' ]                 = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_sendlist_empty' ]              = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_sendlist_knob' ]               = { [ 'desc' ]    =  '                                   ' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_sendlist_knob_bg' ]            = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_sendlist_meter' ]              = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_sendlist_midihw' ]             = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_sendlist_mute' ]               = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_sendlist_norm' ]               = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'folder' ]                   = { [ 'desc' ]        = 'Folder button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_folder_on' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_folder_last' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_folderbg' ]                    = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_folderbgsel' ]                 = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fcomp_off' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fcomp_tiny' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fx' ]                       = { [ 'desc' ]        = 'FX button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_fx_norm' ]                     = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_fx_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fx_dis' ]                      = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_fx_dis.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fx_empty' ]                    = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_fx_empty.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxbyp' ]                    = { [ 'desc' ]        = 'FX bypass button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxin' ]                     = { [ 'desc' ]        = 'Input-FX button' , 
                                              [ 'attributes' ]  = { [ '[font]mcp.fxlist.font' ]                             = 'fx list font index font (' .. 'first coordinate is font ' .. 'index, 1-8 user, 0=main, ' .. '-1=volpan, second is row ' .. 'height if nonzero). 8th i' .. 's scrollbar size if nonze' .. 'ro, 7th is scrollbar gap ' .. 'size (scrollbar size incl' .. 'udes this gap).' ,
                                                                    [ '[margin]mcp.fxlist.margin' ]                         = 'fx list margins (first co' .. 'ordinate is left, third i' .. 's right, fifth is alignme' .. 'nt, sixth is scroll butto' .. 'n size if positive. align' .. 'ment is 0 for left, 0.5 f' .. 'or center, 1 for right). ' .. 'If TCP, seventh coordinat' .. 'e is alignment for FX ins' .. 'tances. 8th coordinate sp' .. 'ecifies gap between colum' .. 'ns, if any.' ,
                                                                    [ '[font]mcp.fxparm.font' ]                             = 'fxparm list font (first c' .. 'oordinate is font index, ' .. '1-8 user, 0=main, -1=volp' .. 'an, second is row height ' .. 'if nonzero). 8th is scrol' .. 'lbar size if nonzero, 7th' .. ' is scrollbar gap size (s' .. 'crollbar size includes th' .. 'is gap).. The fifth param' .. 'eter specifies line spaci' .. 'ng adjustment' ,
                                                                    [ '[margin]mcp.fxparm.margin' ]                         = 'fxparm list margins (firs'  .. 't coordinate is left, thi' .. 'rd is right, fifth is ali' .. 'gnment, sixth is scroll b' .. 'utton size if positive. a' .. 'lignment is 0 for left, 0' .. '.5 for center, 1 for righ' .. 't). If TCP, seventh coord' .. 'inate is alignment for FX' .. ' instances. 8th coordinat' .. 'e specifies gap between c' .. 'olumns, if any.' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_fx_in_norm' ]                  = { [ 'desc' ]    =  '(sliced-button): Alternate image names: track_fx_in_norm If not found, falls back to mcp_fx_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_fx_in_empty' ]                 = { [ 'desc' ]    =  '(sliced-button): Alternate image names: track_fx_in_empty If not found, falls back to mcp_fx_empty.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'io' ]                       = { [ 'desc' ]        = 'IO button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_io' ]                          = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_io_dis' ]                      = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_io_r' ]                        = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_io_s' ]                        = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_io_s_r' ]                      = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_io_r_dis' ]                    = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_io_s_dis' ]                    = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_io_s_r_dis' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'label' ]                    = { [ 'desc' ]        = 'Track name text' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.label.color' ]                            = 'Track name text colors - ' .. 'First four coordinates: f' .. 'oreground - Second four c' .. 'oordinates: background' ,
                                                                    [ '[font]mcp.label.font' ]                              = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]mcp.label.margin' ]                          = 'Track name text margins (' .. 'l,t,r,b) + alignment (ali' .. 'gnment is 0 for left, 0.5' .. ' for center, 1 for right)'  ,
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_namebg' ]                      = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'meter' ]                    = { [ 'desc' ]        = 'Meter outer coordinates' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.meter.inputlabel.color' ]                 = 'First four coordinates: m' .. 'eter input source label t' .. 'ext color' ,
                                                                    [ '[color]mcp.meter.inputlabelbox.color' ]              = 'First four coordinates:' .. ' background for meter inp' .. 'ut source label - Second ' .. 'four coordinates: foregro' .. 'und/border color' ,
                                                                    [ '[color]mcp.meter.readout.color' ]                    = 'non-clipped peak text col' .. 'or - Second four coordina' .. 'tes: clipped peak text co' .. 'lor' ,
                                                                    [ '[color]mcp.meter.rmsreadout.color' ]                 = 'First four coordinates: R' .. 'MS/LUFS mode readout text' .. ' color' ,
                                                                    [ '[color]mcp.meter.scale.color.lit.bottom' ]           = 'First four coordinates:' .. ' meter scale, lit/bottom,' .. ' foreground - Second four' .. ' coordinates: shadow colo' .. 'r' ,
                                                                    [ '[color]mcp.meter.scale.color.lit.top' ]              = 'First four coordinates:' .. ' meter scale, lit/top, fo' .. 'reground - Second four co' .. 'ordinates: shadow color' ,
                                                                    [ '[color]mcp.meter.scale.color.unlit.bottom' ]         = 'First four coordinates:' .. ' meter scale, unlit/botto' .. 'm, foreground - Second fo' .. 'ur coordinates: shadow co' .. 'lor' ,
                                                                    [ '[color]mcp.meter.scale.color.unlit.top' ]            = 'First four coordinates:' .. ' meter scale, unlit/top, ' .. 'foreground - Second four ' .. 'coordinates: shadow color'  ,
                                                                    [ '[div]mcp.meter.vu.div' ]                             = 'First coordinate: divis'  .. 'ion between channels in m' .. 'eter - Second coordinate:' .. ' division mode: - 0=defau' .. 'lt (increase center divis' .. 'ion as necessary) - 1=cen' .. 'ter, increasing middle by' .. ' 1px max - -1=for all eve' .. 'n division/sizes (uncente' .. 'red possibly) - -2=possib' .. 'ly uneven sized channels'  
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_vu' ]                          = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'mute' ]                     = { [ 'desc' ]        = 'Mute button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_mute_off' ]                    = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_mute_off.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_mute_on' ]                     = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_mute_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pan' ]                      = { [ 'desc' ]        = 'Pan fader/knob' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.pan.color' ]                              = 'Pan fader/knob colors -' .. ' First four coordinates: ' .. 'knob line color - Second ' .. 'four coordinates: fader z' .. 'ero line color' ,
                                                                    [ '[fadermode]mcp.pan.fadermode' ]                      = 'Pan fader/knob: fader v'  .. 's knob mode - First coord' .. 'inate: -1 to prevent knob' .. ', 1 to force knob, 0 for ' .. 'default' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_pan_knob_large' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_pan_knob_large.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_pan_knob_small' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_pan_knob_small.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_pan_knob_stack' ]              = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_pan_knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_pan_knob_stack_1' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_pan_knob_stack_1.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_pan_knob_stack_2' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_pan_knob_stack_2.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_panbg' ]                       = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_panbg_vert' ]                  = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_panthumb' ]                    = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_panthumb_vert' ]               = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pan.label' ]                = { [ 'desc' ]        = 'Pan readout text' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.pan.label.color' ]                        = 'Pan readout text colors' .. ' - First four coordinates' .. ': foreground - Second fou' .. 'r coordinates: background'  ,
                                                                    [ '[font]mcp.pan.label.font' ]                          = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]mcp.pan.label.margin' ]                      = 'Pan readout text margins '  .. '(l,t,r,b) + alignment (al' .. 'ignment is 0 for left, 0.' .. '5 for center, 1 for right' .. ')' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_pan_label' ]                   = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_pan_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'phase' ]                    = { [ 'desc' ]        = 'Phase/polarity button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_phase_norm' ]                  = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_phase_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_phase_inv' ]                   = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_phase_inv.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'recarm' ]                   = { [ 'desc' ]        = 'Record arm button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_recarm_off' ]                  = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_off.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_recarm_on' ]                   = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_recarm_auto' ]                 = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_auto.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_recarm_auto_on' ]              = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_auto_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_recarm_norec' ]                = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to mcp_recarm_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_recarm_auto_norec' ]           = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to mcp_recarm_auto_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'recinput' ]                 = { [ 'desc' ]        = 'Record input text field' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.recinput.color' ]                         = 'Record input text field t' .. 'ext color + background co' .. 'lor' ,
                                                                    [ '[font]mcp.recinput.font' ]                           = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]mcp.recinput.margin' ]                       = 'Record input text field m'  .. 'argins (l,t,r,b) + alignm' .. 'ent (alignment is 0 for l' .. 'eft, 0.5 for center, 1 fo' .. 'r right)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_recinput' ]                    = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_recinput.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'recmode' ]                  = { [ 'desc' ]        = 'Record mode button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_recmode_in' ]                  = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recmode_in.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_recmode_out' ]                 = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recmode_out.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_recmode_off' ]                 = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recmode_off.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'recmon' ]                   = { [ 'desc' ]        = 'Record monitor mode butto' .. 'n' , 
                                              [ 'attributes' ]  = { [ '[font]mcp.sendlist.font' ]                           = 'send list font (first coo' .. 'rdinate is font index, 1-' .. '8 user, 0=main, -1=volpan' .. ', second is row height if' .. ' nonzero). 8th is scrollb' .. 'ar size if nonzero, 7th i' .. 's scrollbar gap size (scr' .. 'ollbar size includes this' .. ' gap).' ,
                                                                    [ '[margin]mcp.sendlist.margin' ]                       = 'send list margins (first '  .. 'coordinate is left, third' .. ' is right, fifth is align' .. 'ment, sixth is scroll but' .. 'ton size if positive. ali' .. 'gnment is 0 for left, 0.5' .. ' for center, 1 for right)' .. '. If TCP, seventh coordin' .. 'ate is alignment for FX i' .. 'nstances. 8th coordinate ' .. 'specifies gap between col' .. 'umns, if any.' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_monitor_off' ]                 = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_monitor_off.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_monitor_on' ]                  = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_monitor_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_monitor_auto' ]                = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_monitor_auto.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'size' ]                     = { [ 'desc' ]        = 'First two coordinates: ' .. 'baseline size - Second tw' .. 'o coordinates: minimum si' .. 'ze' , 
                                              [ 'attributes' ]  = { [ '[margin]mcp.margin' ]                                = 'Inner margins'   
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_bg' ]                          = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_bgsel' ]                       = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_iconbg' ]                      = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_iconbgsel' ]                   = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_iconbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mixer_menu' ]                      = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'solo' ]                     = { [ 'desc' ]        = 'Solo button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_solo_off' ]                    = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_solo_off.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_solo_on' ]                     = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_solo_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_solodefeat_on' ]               = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'trackidx' ]                 = { [ 'desc' ]        = 'Track index' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.trackidx.color' ]                         = 'Track index colors - Firs' .. 't four coordinates: foreg' .. 'round - Second four coord' .. 'inates: background' ,
                                                                    [ '[font]mcp.trackidx.font' ]                           = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]mcp.trackidx.margin' ]                       = 'Track index margins (l,t,'  .. 'r,b) + alignment (alignme' .. 'nt is 0 for left, 0.5 for' .. ' center, 1 for right)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_idxbg' ]                       = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_idxbg_sel' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'volume' ]                   = { [ 'desc' ]        = 'Volume fader' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.volume.color' ]                           = '- Volume fader colors - F' .. 'irst four coordinates: kn' .. 'ob line color - Second fo' .. 'ur coordinates: fader zer' .. 'o line color' ,
                                                                    [ '[fadermode]mcp.volume.fadermode' ]                   = '- Volume fader: fader vs '  .. 'knob mode - First coordin' .. 'ate: -1 to prevent knob, ' .. '1 to force knob, 0 for de' .. 'fault' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_vol_knob_large' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_vol_knob_large.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_vol_knob_small' ]              = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_vol_knob_small.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_vol_knob_stack' ]              = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_vol_knob_stack_1' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack_1.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_vol_knob_stack_2' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_vol_knob_stack_2.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_volbg_horz' ]                  = { [ 'desc' ]    =  ': If not found, falls back to tcp_volbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_volbg' ]                       = { [ 'desc' ]    =  '                                           ' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_volthumb_horz' ]               = { [ 'desc' ]    =  ': If not found, falls back to tcp_volthumb.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_volthumb' ]                    = { [ 'desc' ]    =  '                                        ' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'volume.label' ]             = { [ 'desc' ]        = 'Volume readout text' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.volume.label.color' ]                     = '- Volume readout text col' .. 'ors - First four coordina' .. 'tes: foreground - Second ' .. 'four coordinates: backgro' .. 'und' ,
                                                                    [ '[font]mcp.volume.label.font' ]                       = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]mcp.volume.label.margin' ]                   = 'Volume readout text margi'  .. 'ns (l,t,r,b) + alignment ' .. '(alignment is 0 for left,' .. ' 0.5 for center, 1 for ri' .. 'ght)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_vol_label' ]                   = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_vol_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'width' ]                    = { [ 'desc' ]        = 'Width fader/knob' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.width.color' ]                            = 'Width fader/knob colors -' .. ' First four coordinates: ' .. 'knob line color - Second ' .. 'four coordinates: fader z' .. 'ero line color' ,
                                                                    [ '[fadermode]mcp.width.fadermode' ]                    = 'Width fader/knob: fader v'  .. 's knob mode - First coord' .. 'inate: -1 to prevent knob' .. ', 1 to force knob, 0 for ' .. 'default' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_width_knob_large' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_width_knob_large.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_width_knob_small' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_width_knob_small.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_wid_knob_stack' ]              = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_wid_knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_wid_knob_stack_1' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_wid_knob_stack_1.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_wid_knob_stack_2' ]            = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to tcp_wid_knob_stack_2.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_widthbg' ]                     = { [ 'desc' ]    =  ': If not found, falls back to mcp_panbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_widthbg_vert' ]                = { [ 'desc' ]    =  ': If not found, falls back to mcp_panbg_vert.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_widththumb' ]                  = { [ 'desc' ]    =  ': If not found, falls back to mcp_panthumb.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_widththumb_vert' ]             = { [ 'desc' ]    =  ': If not found, falls back to mcp_panthumb_vert.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'width.label' ]              = { [ 'desc' ]        = 'Width readout text' , 
                                              [ 'attributes' ]  = { [ '[color]mcp.width.label.color' ]                      = 'Width readout text colors' .. ' - First four coordinates' .. ': foreground - Second fou' .. 'r coordinates: background' ,
                                                                    [ '[font]mcp.width.label.font' ]                        = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]mcp.width.label.margin' ]                    = 'Width readout text margin' .. 's (l,t,r,b) + alignment (' .. 'alignment is 0 for left, ' .. '0.5 for center, 1 for rig' .. 'ht)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_wid_label' ]                   = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_wid_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } } , 
  [ 'master.mcp' ] = { 
        [ 'env' ]               = { [ 'desc' ]        = 'Envelope/automation mode ' .. 'button' , 
                                              [ 'attributes' ]  = {}  , 
                                              [ 'images' ]      = { 
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'extmixer.position' ] = { [ 'desc' ]        = 'Position of extended mixe' .. 'r elements (including FX,' .. ' sends, FX parameters), o' .. 'nly used if extmixer.mode' .. ' is set to [1]' , 
                                              [ 'attributes' ]  = { [ '[mode]master.mcp.extmixer.mode' ]                    = '(set to [1] to use mcp.ex'  .. 'tmixer.position)'  
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_mainextmixbg' ]                = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_extmixbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_mainextmixbgsel' ]             = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_extmixbgsel.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fx' ]                = { [ 'desc' ]        = 'FX button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_master_fxlist_bg' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_fxlist_bg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_fxlist_byp' ]           = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_fxlist_byp.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_fxlist_empty' ]         = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_fxlist_empty.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_fxlist_norm' ]          = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_fxlist_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_fxlist_off' ]           = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_fxlist_off.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_sendlist_bg' ]          = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_bg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_sendlist_empty' ]       = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_empty.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_sendlist_knob' ]        = { [ 'desc' ]    =  ': If not found, falls back to mcp_sendlist_knob.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_sendlist_meter' ]       = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_meter.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_sendlist_mute' ]        = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_mute.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_sendlist_norm' ]        = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_sendlist_norm.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fxbyp' ]             = { [ 'desc' ]        = 'FX bypass button' , 
                                              [ 'attributes' ]  = { [ '[font]master.mcp.fxlist.font' ]                      = 'fx list font (first coord' .. 'inate is font index, 1-8 ' .. 'user, 0=main, -1=volpan, ' .. 'second is row height if n' .. 'onzero). 8th is scrollbar' .. ' size if nonzero, 7th is ' .. 'scrollbar gap size (scrol' .. 'lbar size includes this g' .. 'ap).' ,
                                                                    [ '[margin]master.mcp.fxlist.margin' ]                  = 'fx list margins (first co' .. 'ordinate is left, third i' .. 's right, fifth is alignme' .. 'nt, sixth is scroll butto' .. 'n size if positive. align' .. 'ment is 0 for left, 0.5 f' .. 'or center, 1 for right). ' .. 'If TCP, seventh coordinat' .. 'e is alignment for FX ins' .. 'tances. 8th coordinate sp' .. 'ecifies gap between colum' .. 'ns, if any.' ,
                                                                    [ '[font]master.mcp.fxparm.font' ]                      = 'fxparm list font (first c' .. 'oordinate is font index, ' .. '1-8 user, 0=main, -1=volp' .. 'an, second is row height ' .. 'if nonzero). 8th is scrol' .. 'lbar size if nonzero, 7th' .. ' is scrollbar gap size (s' .. 'crollbar size includes th' .. 'is gap).. The fifth param' .. 'eter specifies line spaci' .. 'ng adjustment' ,
                                                                    [ '[margin]master.mcp.fxparm.margin' ]                  = 'fxparm list margins (firs'  .. 't coordinate is left, thi' .. 'rd is right, fifth is ali' .. 'gnment, sixth is scroll b' .. 'utton size if positive. a' .. 'lignment is 0 for left, 0' .. '.5 for center, 1 for righ' .. 't). If TCP, seventh coord' .. 'inate is alignment for FX' .. ' instances. 8th coordinat' .. 'e specifies gap between c' .. 'olumns, if any.' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'io' ]                = { [ 'desc' ]        = 'IO button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'master_mcp_io' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'label' ]             = { [ 'desc' ]        = 'Track name text' , 
                                              [ 'attributes' ]  = { [ '[color]master.mcp.label.color' ]                     = 'Track name text colors - ' .. 'First four coordinates: f' .. 'oreground - Second four c' .. 'oordinates: background' ,
                                                                    [ '[font]master.mcp.label.font' ]                       = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]master.mcp.label.margin' ]                   = 'Track name text margins (' .. 'l,t,r,b) + alignment (ali' .. 'gnment is 0 for left, 0.5' .. ' for center, 1 for right)'  ,
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_main_namebg' ]                 = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_main_namebg_sel' ]             = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'menubutton' ]        = { [ 'desc' ]        = 'Mixer menu button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'meter' ]             = { [ 'desc' ]        = 'Meter outer coordinates' , 
                                              [ 'attributes' ]  = { [ '[color]master.mcp.meter.readout.color' ]             = 'non-clipped peak text col' .. 'or - Second four coordina' .. 'tes: clipped peak text co' .. 'lor' ,
                                                                    [ '[color]master.mcp.meter.rmsreadout.color' ]          = 'First four coordinates: R' .. 'MS/LUFS mode readout text' .. ' color' ,
                                                                    [ '[color]master.mcp.meter.scale.color.lit.bottom' ]    = 'First four coordinates:' .. ' meter scale, lit/bottom,' .. ' foreground - Second four' .. ' coordinates: shadow colo' .. 'r' ,
                                                                    [ '[color]master.mcp.meter.scale.color.lit.top' ]       = 'First four coordinates:' .. ' meter scale, lit/top, fo' .. 'reground - Second four co' .. 'ordinates: shadow color' ,
                                                                    [ '[color]master.mcp.meter.scale.color.unlit.bottom' ]  = 'First four coordinates:' .. ' meter scale, unlit/botto' .. 'm, foreground - Second fo' .. 'ur coordinates: shadow co' .. 'lor' ,
                                                                    [ '[color]master.mcp.meter.scale.color.unlit.top' ]     = 'First four coordinates:' .. ' meter scale, unlit/top, ' .. 'foreground - Second four ' .. 'coordinates: shadow color'  ,
                                                                    [ '[div]master.mcp.meter.vu.div' ]                      = 'First coordinate: divis' .. 'ion between channels in m' .. 'eter - Second coordinate:' .. ' division mode: - 0=defau' .. 'lt (increase center divis' .. 'ion as necessary) - 1=cen' .. 'ter, increasing middle by' .. ' 1px max - -1=for all eve' .. 'n division/sizes (uncente' .. 'red possibly) - -2=possib' .. 'ly uneven sized channels'  ,
                                                                    [ '[div]master.mcp.meter.vu.rmsdiv' ]                   = 'First coordinate: divis'  .. 'ion between RMS meter cha' .. 'nnels. - Second coordinat' .. 'e: adjust size of RMS in ' .. 'RMS+peak mode' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_master_vu' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'mono' ]              = { [ 'desc' ]        = 'Mono button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'mute' ]              = { [ 'desc' ]        = 'Mute button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pan' ]               = { [ 'desc' ]        = 'Pan fader/knob' , 
                                              [ 'attributes' ]  = { [ '[color]master.mcp.pan.color' ]                       = 'Pan fader/knob colors -' .. ' First four coordinates: ' .. 'knob line color - Second ' .. 'four coordinates: fader z' .. 'ero line color' ,
                                                                    [ '[fadermode]master.mcp.pan.fadermode' ]               = 'Pan fader/knob: fader v'  .. 's knob mode - First coord' .. 'inate: -1 to prevent knob' .. ', 1 to force knob, 0 for ' .. 'default' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pan.label' ]         = { [ 'desc' ]        = 'Pan readout text' , 
                                              [ 'attributes' ]  = { [ '[color]master.mcp.pan.label.color' ]                 = 'Pan readout text colors' .. ' - First four coordinates' .. ': foreground - Second fou' .. 'r coordinates: background'  ,
                                                                    [ '[font]master.mcp.pan.label.font' ]                   = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]master.mcp.pan.label.margin' ]               = 'Pan readout text margins ' .. '(l,t,r,b) + alignment (al' .. 'ignment is 0 for left, 0.' .. '5 for center, 1 for right' .. ')' ,
                                                                    [ '[font]master.mcp.sendlist.font' ]                    = 'send list font (first coo' .. 'rdinate is font index, 1-' .. '8 user, 0=main, -1=volpan' .. ', second is row height if' .. ' nonzero). 8th is scrollb' .. 'ar size if nonzero, 7th i' .. 's scrollbar gap size (scr' .. 'ollbar size includes this' .. ' gap).' ,
                                                                    [ '[margin]master.mcp.sendlist.margin' ]                = 'send list margins (first '  .. 'coordinate is left, third' .. ' is right, fifth is align' .. 'ment, sixth is scroll but' .. 'ton size if positive. ali' .. 'gnment is 0 for left, 0.5' .. ' for center, 1 for right)' .. '. If TCP, seventh coordin' .. 'ate is alignment for FX i' .. 'nstances. 8th coordinate ' .. 'specifies gap between col' .. 'umns, if any.' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_master_pan_label' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_pan_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'size' ]              = { [ 'desc' ]        = 'First two coordinates: ' .. 'baseline size - Second tw' .. 'o coordinates: minimum si' .. 'ze' , 
                                              [ 'attributes' ]  = { [ '[margin]master.mcp.margin' ]                         = 'Inner margins'  
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_mainiconbg' ]                  = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_iconbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_mainiconbgsel' ]               = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_iconbgsel.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_mainbg' ]                      = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_mainbgsel' ]                   = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_stereo' ]                      = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_stereo.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_mono' ]                        = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_mono.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'solo' ]              = { [ 'desc' ]        = 'Solo button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'volume' ]            = { [ 'desc' ]        = 'Volume fader' , 
                                              [ 'attributes' ]  = { [ '[color]master.mcp.volume.color' ]                    = '- Volume fader colors - F' .. 'irst four coordinates: kn' .. 'ob line color - Second fo' .. 'ur coordinates: fader zer' .. 'o line color' ,
                                                                    [ '[fadermode]master.mcp.volume.fadermode' ]            = '- Volume fader: fader vs '  .. 'knob mode - First coordin' .. 'ate: -1 to prevent knob, ' .. '1 to force knob, 0 for de' .. 'fault' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_master_volbg_horz' ]           = { [ 'desc' ]    =  ': If not found, falls back to mcp_volbg_horz.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_volbg' ]                = { [ 'desc' ]    =  ': If not found, falls back to mcp_volbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_volthumb_horz' ]        = { [ 'desc' ]    =  ': If not found, falls back to mcp_volthumb_horz.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'mcp_master_volthumb' ]             = { [ 'desc' ]    =  ': If not found, falls back to mcp_volthumb.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'volume.label' ]      = { [ 'desc' ]        = 'Volume readout text' , 
                                              [ 'attributes' ]  = { [ '[color]master.mcp.volume.label.color' ]              = '- Volume readout text col' .. 'ors - First four coordina' .. 'tes: foreground - Second ' .. 'four coordinates: backgro' .. 'und' ,
                                                                    [ '[font]master.mcp.volume.label.font' ]                = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]master.mcp.volume.label.margin' ]            = 'Volume readout text margi'  .. 'ns (l,t,r,b) + alignment ' .. '(alignment is 0 for left,' .. ' 0.5 for center, 1 for ri' .. 'ght)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_master_vol_label' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_vol_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'width' ]             = { [ 'desc' ]        = 'Width fader/knob' , 
                                              [ 'attributes' ]  = { [ '[color]master.mcp.width.color' ]                     = 'Width fader/knob colors -' .. ' First four coordinates: ' .. 'knob line color - Second ' .. 'four coordinates: fader z' .. 'ero line color' ,
                                                                    [ '[fadermode]master.mcp.width.fadermode' ]             = 'Width fader/knob: fader v'  .. 's knob mode - First coord' .. 'inate: -1 to prevent knob' .. ', 1 to force knob, 0 for ' .. 'default' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'width.label' ]       = { [ 'desc' ]        = 'Width readout text' , 
                                              [ 'attributes' ]  = { [ '[color]master.mcp.width.label.color' ]               = 'Width readout text colors' .. ' - First four coordinates' .. ': foreground - Second fou' .. 'r coordinates: background'  ,
                                                                    [ '[font]master.mcp.width.label.font' ]                 = 'font (first coordinate is' .. ' font index, 1-8 user, 0=' .. 'main, -1=volpan)' ,
                                                                    [ '[margin]master.mcp.width.label.margin' ]             = 'Width readout text margin' .. 's (l,t,r,b) + alignment (' .. 'alignment is 0 for left, ' .. '0.5 for center, 1 for rig' .. 'ht)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'mcp_master_wid_label' ]            = { [ 'desc' ]    =  '(bg): If not found, falls back to mcp_wid_label.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } } , 
  [ 'envcp' ] = { 
        [ 'arm' ]                    = { [ 'desc' ]        = 'Arm button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'envcp_arm_off' ]                   = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_off.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_arm_on' ]                    = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_recarm_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'bypass' ]                 = { [ 'desc' ]        = 'Bypass button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'envcp_bypass_off' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_bypass_on' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fader' ]                  = { [ 'desc' ]        = 'Envelope fader' , 
                                              [ 'attributes' ]  = { [ '[color]envcp.fader.color' ]                          = 'Envelope fader colors - F' .. 'irst four coordinates: kn' .. 'ob line color - Second fo' .. 'ur coordinates: fader zer' .. 'o line color' ,
                                                                    [ '[fadermode]envcp.fader.fadermode' ]                  = 'Envelope fader: fader vs '  .. 'knob mode - First coordin' .. 'ate: -1 to prevent knob, ' .. '1 to force knob, 0 for de' .. 'fault' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'envcp_faderbg' ]                   = { [ 'desc' ]    =  ': If not found, falls back to tcp_volbg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_faderbg_vert' ]              = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_fader' ]                     = { [ 'desc' ]    =  ': If not found, falls back to tcp_volthumb.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_fader_vert' ]                = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_knob_large' ]                = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_large.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_knob_small' ]                = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_small.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_knob_stack' ]                = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to knob_stack.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_knob_stack_1' ]              = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to knob_stack_1.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_knob_stack_2' ]              = { [ 'desc' ]    =  '(knob-stack): If not found, falls back to knob_stack_2.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'hide' ]                   = { [ 'desc' ]        = 'Hide button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'envcp_hide' ]                      = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'label' ]                  = { [ 'desc' ]        = 'Envelope label' , 
                                              [ 'attributes' ]  = { [ '[color]envcp.label.color' ]                          = 'Envelope label colors - F' .. 'irst four coordinates: fo' .. 'reground - Second four co' .. 'ordinates: background' ,
                                                                    [ '[font]envcp.label.font' ]                            = 'Envelope label font (firs' .. 't coordinate is font inde' .. 'x, 1-8 user, 0=main, -1=v' .. 'olpan)' ,
                                                                    [ '[margin]envcp.label.margin' ]                        = 'Envelope label margins (l'  .. ',t,r,b) + alignment (alig' .. 'nment is 0 for left, 0.5 ' .. 'for center, 1 for right)'  
                                                                  }  , 
                                              [ 'images' ]      = { [ 'envcp_namebg' ]                    = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_namebg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'learn' ]                  = { [ 'desc' ]        = 'Learn button' , 
                                              [ 'attributes' ]  = {}  , 
                                              [ 'images' ]      = { [ 'envcp_learn' ]                     = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_learn_on' ]                  = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to envcp_learn.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'mod' ]                    = { [ 'desc' ]        = 'Parameter modulation butt' .. 'on' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'envcp_parammod' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_parammod_on' ]               = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to envcp_parammod.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'size' ]                   = { [ 'desc' ]        = 'First two coordinates: ' .. 'baseline size - Second tw' .. 'o coordinates: minimum si' .. 'ze' , 
                                              [ 'attributes' ]  = { [ '[margin]envcp.margin' ]                              = 'Inner margins' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'envcp_bg' ]                        = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_bg.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'envcp_bgsel' ]                     = { [ 'desc' ]    =  '(bg): If not found, falls back to tcp_bgsel.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'value' ]                  = { [ 'desc' ]        = 'Envelope value' , 
                                              [ 'attributes' ]  = { [ '[color]envcp.value.color' ]                          = 'Envelope value colors - F' .. 'irst four coordinates: fo' .. 'reground - Second four co' .. 'ordinates: background' ,
                                                                    [ '[font]envcp.value.font' ]                            = 'Envelope value font (firs' .. 't coordinate is font inde' .. 'x, 1-8 user, 0=main, -1=v' .. 'olpan)' ,
                                                                    [ '[margin]envcp.value.margin' ]                        = 'Envelope value margins (l' .. ',t,r,b) + alignment (alig' .. 'nment is 0 for left, 0.5 ' .. 'for center, 1 for right)'  
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } } , 
  [ 'trans' ] = { 
        [ 'automode' ]               = { [ 'desc' ]        = 'Automation mode button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'global_trim' ]                     = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'global_read' ]                     = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_read.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'global_touch' ]                    = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_touch.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'global_write' ]                    = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_write.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'global_latch' ]                    = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env_latch.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'global_bypass' ]                   = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_mute_on.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'global_off' ]                      = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to track_env.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'global_preview' ]                  = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to global_latch.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'bpm.edit' ]               = { [ 'desc' ]        = 'BPM text/edit' , 
                                              [ 'attributes' ]  = { [ '[color]trans.bpm.edit.color' ]                       = 'BPM text/edit colors - Fi' .. 'rst four coordinates: for' .. 'eground - Second four coo' .. 'rdinates: background' ,
                                                                    [ '[font]trans.bpm.edit.font' ]                         = 'BPM text/edit font (first' .. ' coordinate is font index' .. ', 1-8 user, 0=main, -1=vo' .. 'lpan)' ,
                                                                    [ '[margin]trans.bpm.edit.margin' ]                     = 'BPM text/edit margins (l,'  .. 't,r,b) + alignment (align' .. 'ment is 0 for left, 0.5 f' .. 'or center, 1 for right)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_edit_bg' ]               = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'bpm.tap' ]                = { [ 'desc' ]        = 'BPM tap button' , 
                                              [ 'attributes' ]  = { [ '[color]trans.bpm.tap.color' ]                        = 'BPM tap button colors - F' .. 'irst four coordinates: fo' .. 'reground - Second four co' .. 'ordinates: background' ,
                                                                    [ '[font]trans.bpm.tap.font' ]                          = 'BPM tap button font (firs' .. 't coordinate is font inde' .. 'x, 1-8 user, 0=main, -1=v' .. 'olpan)' ,
                                                                    [ '[margin]trans.bpm.tap.margin' ]                      = 'BPM tap button margins'  
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_bpm' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_bpm_bg' ]                = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'curtimesig' ]             = { [ 'desc' ]        = 'Time signature display' , 
                                              [ 'attributes' ]  = { [ '[color]trans.curtimesig.color' ]                     = 'colors - First four coord' .. 'inates: foreground - Seco' .. 'nd four coordinates: back' .. 'ground' ,
                                                                    [ '[font]trans.curtimesig.font' ]                       = 'Time signature display fo'  .. 'nt (first coordinate is f' .. 'ont index, 1-8 user, 0=ma' .. 'in, -1=volpan)' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'fwd' ]                    = { [ 'desc' ]        = 'Forward/end of project bu' .. 'tton' , 
                                              [ 'attributes' ]  = { ''
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_end' ]                   = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_next' ]                  = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to transport_end.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'pause' ]                  = { [ 'desc' ]        = 'Pause button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_pause' ]                 = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_pause_on' ]              = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'play' ]                   = { [ 'desc' ]        = 'Play button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_play' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_play_on' ]               = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_play_sync' ]             = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_play_sync_on' ]          = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'rate' ]                   = { [ 'desc' ]        = 'Playback rate text/edit' , 
                                              [ 'attributes' ]  = { [ '[color]trans.rate.color' ]                           = 'Playback rate text/edit c'  .. 'olors - First four coordi' .. 'nates: foreground - Secon' .. 'd four coordinates: backg' .. 'round' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'rate.fader' ]             = { [ 'desc' ]        = 'Playback rate slider' , 
                                              [ 'attributes' ]  = { [ '[color]trans.rate.fader.color' ]                     = 'Playback rate slider colo' .. 'rs - First four coordinat' .. 'es: knob line color - Sec' .. 'ond four coordinates: fad' .. 'er zero line color' ,
                                                                    [ '[fadermode]trans.rate.fader.fadermode' ]             = 'Playback rate slider: fad' .. 'er vs knob mode - First c' .. 'oordinate: -1 to prevent ' .. 'knob, 1 to force knob, 0 ' .. 'for default' ,
                                                                    [ '[font]trans.rate.font' ]                             = 'Playback rate text/edit f' .. 'ont (first coordinate is ' .. 'font index, 1-8 user, 0=m' .. 'ain, -1=volpan)' ,
                                                                    [ '[margin]trans.rate.margin' ]                         = 'Playback rate text/edit m'  .. 'argins (l,t,r,b) + alignm' .. 'ent (alignment is 0 for l' .. 'eft, 0.5 for center, 1 fo' .. 'r right)' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_playspeedbg' ]           = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_playspeedbg_vert' ]      = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_playspeedthumb' ]        = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_playspeedthumb_vert' ]   = { [ 'desc' ]    =  '' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'rec' ]                    = { [ 'desc' ]        = 'Record button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_record' ]                = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_record_on' ]             = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_record_item' ]           = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_record_item_on' ]        = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_record_loop' ]           = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_record_loop_on' ]        = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'repeat' ]                 = { [ 'desc' ]        = 'Repeat button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_repeat_off' ]            = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_repeat_on' ]             = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'rew' ]                    = { [ 'desc' ]        = 'Rewind/start of project b' .. 'utton' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_previous' ]              = { [ 'desc' ]    =  '(sliced-button): If not found, falls back to transport_home.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_home' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'sel' ]                    = { [ 'desc' ]        = 'Selection information/edi' .. 't' , 
                                              [ 'attributes' ]  = { [ '[color]trans.sel.color' ]                            = 'Selection information/edi' .. 't colors - First four coo' .. 'rdinates: foreground - Se' .. 'cond four coordinates: ba' .. 'ckground' ,
                                                                    [ '[font]trans.sel.font' ]                              = 'Selection information/edi' .. 't font (first coordinate ' .. 'is font index, 1-8 user, ' .. '0=main, -1=volpan)' ,
                                                                    [ '[margin]trans.sel.margin' ]                          = 'Selection information/edi'  .. 't margins' 
                                                                  }  , 
                                              [ 'images' ]      = {
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'size' ]                   = { [ 'desc' ]        = 'Baseline size' , 
                                              [ 'attributes' ]  = { [ '[margin]trans.margin' ]            = 'Inner margins' , 
                                                                    [ '[doced]trans.size.dockedheight' ]  = 'First coordinate: desired' .. ' docked height' , 
                                                                    [ '[minmax]trans.size.minmax' ]       = 'First two coordinates: ' .. 'minimum size - Second two' .. ' coordinates: maximum size' , 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_group_bg' ]              = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_knob_bg_large' ]         = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_large.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_knob_bg_small' ]         = { [ 'desc' ]    =  '(bg): If not found, falls back to gen_knob_bg_small.' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_bg' ]                    = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'status' ]                 = { [ 'desc' ]        = 'Status display' , 
                                              [ 'attributes' ]  = { [ '[margin]trans.status.margin' ]                       = 'Status display margins'  
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_status_bg' ]             = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            } , 
                                                                    [ 'transport_status_bg_err' ]         = { [ 'desc' ]    =  '(bg):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } , 
        [ 'stop' ]                   = { [ 'desc' ]        = 'Stop button' , 
                                              [ 'attributes' ]  = { [ '' ]                                = '' 
                                                                  }  , 
                                              [ 'images' ]      = { [ 'transport_stop' ]                  = { [ 'desc' ]    =  '(sliced-button):' , 
                                                                                                              [ 'actions' ] = {} 
                                                                                                            }  
                                                                  } , 
                                              [ 'reapertheme' ] = {} 
                                            } } 
} 

-- 