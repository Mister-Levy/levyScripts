-- INITIAL VALUES 

  -- User 

  window_title                      = 'Theme Editor' 

  -- 

  -- Values

    r                                 = reaper
    ctx                               = r.ImGui_CreateContext( window_title ) 
    win                               = string.find(r.GetOS(), "Win") -- returns 1 if OS is Windows nil if OS is other  -- get folder seperator
    sep                               = win and "\\" or "/" 
    timer                             = r.time_precise() 
    debug_log                         = true 
    rtconfig_element_string_read_main = ' h<(%d) w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] ' .. 
                                         'h<(%d) w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] ' .. 
                                                'w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] ' 
  
  --

  -- Tables

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

    panel_list = {"tcp", "master.tcp", "mcp", "master.mcp", "envcp", "trans"} 
    -- 

    selected_elements_table = {} 
    -- 

    element_list = {} 
    element_combo_strings_table = {} 
    panel_combo_list = ""

      for i , v in ipairs( panel_list ) do 

        panel_combo_list = panel_combo_list .. panel_list[ i ] .. "\31" 

        element_list[ i ] = {} 
        for k in pairs( main_table[ v ] ) do 
          element_list[ i ][ #element_list[ i ] + 1 ] = k 
        end 
        table.sort( element_list[ i ] ) 

        element_combo_strings_table[ i ] = '' 
        for e = 1 , #element_list[ i ] do 
          element_combo_strings_table[ i ] = element_combo_strings_table[ i ] .. element_list[ i ][ e ] .. "\31" 
        end 

      end 

    -- 

    theme_parameters_table = {}

  -- 
  
  -- Combo Box Strings 
  -- 

  -- Libraries

    dofile( r.GetResourcePath() .. "/UserPlugins/ultraschall_api.lua" ) 

  -- 

-- 

-- DEVELOPMENT 

  -- String Search Patterns 

    pattern_1   = '[^' .. sep .. ']+$'                                                        -- all characters from the last sep to the end (not including the sep) 
    pattern_2   = '([^' .. sep .. ']+)' .. sep .. '$'                                         -- all characters between the second last sep to the end if the end is a sep (not including the sep)
    pattern_3   = '(.+' .. sep .. ')[^' .. sep .. ']*$'                                       -- all characters from the start to the last sep (including the sep)
    pattern_4   = '([^' .. sep .. ']+)' .. sep .. '[^' .. sep .. ']*$'                        -- all characters between the second last sep and the last sep (not including the sep)
    pattern_5   = '([^' .. sep .. ']+).png$'                                                  -- all characters from the last sep to the .png if at the end (not including the sep or the .png)
    pattern_6   = r.GetResourcePath() .. sep .. "ColorThemes" .. sep .. '([^' .. sep .. ']+)' -- get theme folder name from path excluding seps
    pattern_7   = '^[^_]+'                                                                    -- all characters from the start to the first underscore (not including the underscore)
    pattern_8   = '^[^%.]+'                                                                   -- all characters from the start to the first . (not including the .)
    pattern_9   = '^(.+)%..+$'                                                                -- all characters from the start to the last . (not including the .)
    pattern_10  = '%..+$'                                                                    -- all characters from the last . to the end (not including the .)
    pattern_11  = '([^' .. sep .. ']+)%..+$'                                                 -- all characters from the last sep to the last . with a file type after if at the end (not including the sep or the . or file type) 
    pattern_12  = "([^" .. sep .. "]+).[Rr][Ee][Aa][Pp][Ee][Rr][Tt][Hh][Ee][Mm][Ee]$"        -- 'Reaper/ColorThemes/Theme Name.ReaperTheme' = 'Theme Name' 
    pattern_12a = "([^" .. sep .. "]+)%.%w*$"                                                 -- 'Reaper/ColorThemes/Theme Name.ReaperTheme' = 'Theme Name' 
    pattern_13  = '^%s*Layout%s*"[%a%d%s]+"'                                                 -- '   Layout " any Layout name y0u want "    ' = '   Layout " any Layout name y0u want "' 
    pattern_14  = '"([%a%d%s]+)"'                                                            -- '   Layout " any Layout name y0u want "    ' = ' any Layout name y0u want ' 
    pattern_15  = "current_edit_element$" 

  --
    
--

-- FUNCTIONS 

  -- ImGui 
    
    function modal_window_new_theme_name() 
      r.ImGui_OpenPopup( ctx , 'ENTER NEW THEME NAME' ) 
      if r.ImGui_BeginPopupModal( ctx , 'ENTER NEW THEME NAME' , nil , r.ImGui_WindowFlags_AlwaysAutoResize() ) then 
        -- if not r.ImGui_IsAnyItemActive( ctx ) then r.ImGui_SetKeyboardFocusHere( ctx ) end 
        rv , new_theme_name = r.ImGui_InputText( ctx , '##new_theme_name', new_theme_name ) 
        r.ImGui_Separator( ctx ) 
        if r.ImGui_Button( ctx , 'OK' , 120 , 0 ) or r.ImGui_IsKeyPressed ( ctx , 13 ) then 
          if not r.file_exists( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. new_theme_name .. '.ReaperTheme' ) and new_theme_name ~= 'ERROR: Theme already exists' then 
            create_new_theme( new_theme_name )
            new_theme_name = nil 
            r.ImGui_CloseCurrentPopup( ctx ) 
          else
            new_theme_name = 'ERROR: Theme already exists'
          end
        end 
        r.ImGui_SetItemDefaultFocus( ctx ) 
        r.ImGui_SameLine( ctx ) 
        if r.ImGui_Button( ctx , 'Cancel' , 120 , 0 ) then new_theme_name = nil r.ImGui_CloseCurrentPopup( ctx ) end 
        r.ImGui_EndPopup( ctx ) 
      end 
    end 
    
    function modal_window_duplicate_theme_name() 
      r.ImGui_OpenPopup( ctx , 'ENTER DUPLICATE THEME NAME' ) 
      if r.ImGui_BeginPopupModal( ctx , 'ENTER DUPLICATE THEME NAME' , nil , r.ImGui_WindowFlags_AlwaysAutoResize() ) then 
        -- if not r.ImGui_IsAnyItemActive( ctx ) then r.ImGui_SetKeyboardFocusHere( ctx ) end 
        rv , duplicate_theme_name = r.ImGui_InputText( ctx , '##duplicate_theme_name', duplicate_theme_name ) 
        r.ImGui_Separator( ctx ) 
        if r.ImGui_Button( ctx , 'OK' , 120 , 0 ) or r.ImGui_IsKeyPressed ( ctx , 13 ) then 
          if not r.file_exists( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. duplicate_theme_name .. '.ReaperTheme' ) and duplicate_theme_name ~= 'ERROR: Theme already exists' then 
            duplicate_theme( selected_theme , duplicate_theme_name )
            duplicate_theme_name = nil 
            r.ImGui_CloseCurrentPopup( ctx ) 
          else
            duplicate_theme_name = 'ERROR: Theme already exists'
          end
        end 
        r.ImGui_SetItemDefaultFocus( ctx ) 
        r.ImGui_SameLine( ctx ) 
        if r.ImGui_Button( ctx , 'Cancel' , 120 , 0 ) then duplicate_theme_name = nil r.ImGui_CloseCurrentPopup( ctx ) end 
        r.ImGui_EndPopup( ctx ) 
      end 
    end 
    
  --

  -- OS 

    function delete_file( path ) 
      if win then 
        debug_msg('delete_file( path ) (win) ' .. [[ os.execute( 'del /f "]] .. path .. [["' ) ]] )
        os.execute( 'del /f "' .. path .. '"' ) 
      else 
        debug_msg('delete_file( path ) (macos) ' .. [[ os.execute( 'rm "']] .. path .. [['"' ) ]] )
        os.execute( 'rm "' .. path .. '"' ) 
      end 
    end 

    function open_file( path ) 
      if win then 
        os.execute( '"' .. path .. '"')
      else 
        os.execute( 'open "' .. path  .. '"' ) 
      end 
    end 

    function copy_file( original_file , duplicate_file ) 
      if win then 
        os.execute('copy /y "' .. original_file .. '" "' .. duplicate_file .. '"')
      else 
        os.execute( 'cp "' .. original_file .. '" "' .. duplicate_file .. '"' ) 
      end 
    end 

    function copy_folder( original_folder , duplicate_folder ) 
      if win then 
        os.execute('mkdir "' .. duplicate_folder .. '"')
        os.execute('Xcopy "' .. original_folder .. '" "' .. duplicate_folder .. '" /e/y')
      else 
        os.execute( 'cp -R ' .. string.gsub( original_folder , " " , "\\ " ) .. ' ' .. string.gsub( duplicate_folder , " " , "\\ " ) .. '' ) 
      end 
    end

    function delete_folder( path ) 
      if win then 
        os.execute( 'rd /s/q "' .. path .. '"' )
      else 
        os.execute( 'rm -r "' .. path .. '"' )
        os.execute( 'rmdir  "' .. path .. '"' )
      end 
    end 

    function create_folder( new_folder_path ) 
      if win then 
        os.execute( 'mkdir "' .. new_folder_path .. '"' )
      else 
        os.execute( 'mkdir "' .. new_folder_path .. '"' ) 
      end 
    end 

  -- 

  -- Paths 

    function get_theme_folder_path( theme_file_name )   -- Returns full theme folder path 
      for line in io.lines( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. theme_file_name .. ".ReaperTheme" ) do
        if string.find( line, "ui_img" ) then 
          current_theme_folder_name = string.match( line, "=(%C*)" ) 
        end 
      end 

      return string.gsub( r.GetLastColorThemeFile() , pattern_12 , current_theme_folder_name ) 
    end 

    function current_rtconfig_path() 
      for line in io.lines( r.GetLastColorThemeFile() ) do 
        if string.find( line, "ui_img" ) then 
          current_theme_folder_name = string.match( line, "=(.+)" ) 
          break 
        end 
      end 
      return string.gsub( r.GetLastColorThemeFile() , '[^\\/]+$' , current_theme_folder_name ) .. sep .. 'rtconfig.txt' 
    end 

  --

  -- Theme 

    -- rtconfig 

      function set_rtconfig_element_values( panel , old_element , new_element ) 

        debug_msg( 'set_rtconfig_element_values( panel = ' .. panel .. ' , old_element = ' .. tostring( old_element ) .. ' , new_element = ' .. new_element .. ' )' ) 
        msg()

        -- Create Strings With Parameters to Write 

          local element_parameters_table = {} 
          local i = 1 
          while r.ThemeLayout_GetParameter( i ) ~= nil do 
            local _ , _ , val = r.ThemeLayout_GetParameter( i ) 
            element_parameters_table[ i ] = val 
            i = i + 1 
          end 

          local states      = element_parameters_table[ 1 ] 
          local rows        = element_parameters_table[ states + 1 ] 
          local columns     = element_parameters_table[ states + rows + 1 ] 
          local attributes  = element_parameters_table[ columns + states + rows + 1 ] 
          local positions   = states * rows * columns * 8 

          debug_msg( 'states      = ' .. states .. '\n\t\t\trows        = ' .. rows .. '\n\t\t\tcolumns     = ' .. columns .. '\n\t\t\tattributes  = ' .. attributes .. '\n\t\t\tpositions   = ' .. positions )
          
          local p = states + rows + columns + attributes + 1 
          str = '' -- '/ ' 
          for ii = 1 , states do -- Create string to write element position and size values to rtconfig files 
            if ii < states then str = str .. 'state{0}=' .. string.format( "%02d" , element_parameters_table[ ii + 1 ] ) .. ' ' end 
            for iii = 1 , rows do 
              if iii < rows then str = str .. 'h<' .. string.format( "%04d" , element_parameters_table[ states + 1 + iii ] ) .. ' ' end 
              for iii = 1 , columns do 
                if iii < columns then str = str .. 'w<' .. string.format( "%04d" , element_parameters_table[ states + rows + 1 + iii ] ) .. ' ' end 
                str = str .. '[ '
                for iiiii = 1 , 8 do 
                  if iiiii > 4 then 
                    str = str .. string.format( "%.2f" , element_parameters_table[ p ] / 100 ) .. ' ' 
                  elseif iiiii > 2 then 
                    str = str .. '0020' .. ' ' 
                  else
                    str = str .. string.format( "%04d" , element_parameters_table[ p ] ) .. ' ' 
                  end 
                  p = p + 1 
                end 
                str = str .. '] '
              end
            end 
          end 
          -- str = str .. '[1 1 1 1 100 100 100 100]' 

          attribute_strings = {} 
          for i = 1 , attributes - 1 do -- Create string to for writing element attributes to rtconfig file 
            attribute_strings[ i ] = '' 
            for ii = 1 , states do 
              if ii < states then attribute_strings[ i ] = attribute_strings[ i ] .. 'state{0}=' .. string.format( "%02d" , element_parameters_table[ ii + 1 ] ) .. ' ' end 
              for iii = 1 , rows do 
                if iii < rows then attribute_strings[ i ] = attribute_strings[ i ] .. 'h<' .. string.format( "%04d" , element_parameters_table[ states + 1 + iii ] ) .. ' ' end 
                for iii = 1 , columns do 
                  if iii < columns then attribute_strings[ i ] = attribute_strings[ i ] .. 'w<' .. string.format( "%04d" , element_parameters_table[ states + rows + 1 + iii ] ) .. ' ' end 
                  attribute_strings[ i ] = attribute_strings[ i ] .. '[ ' 
                  for iiiii = 1 , element_parameters_table[ states + rows + columns + 1 + i ] do 
                    attribute_strings[ i ] = attribute_strings[ i ] .. string.format( "%04d" , element_parameters_table[ p ] ) .. ' ' 
                    p = p + 1 
                  end 
                  attribute_strings[ i ] = attribute_strings[ i ] .. '] ' 
                  for iiiiii = 1 , 8 - element_parameters_table[ states + rows + columns + 1 + i ] do 
                    attribute_strings[ i ] = attribute_strings[ i ] .. '     '  
                  end 
                end
              end 
            end 
          end

        -- 


        local file = io.open( current_rtconfig_path() , "r" ) -- Reading. 
        local lines = {} 
        local rest_of_file 
        -- local line_count = 1 
        local a = nil 
        for line in file:lines() do -- Create table of strings to write to rtconfig 



          if string.find( line , "^%s*set%s+" .. panel .. '.' .. new_element .. "%s+" ) then --Is this the line to modify? 


            lines[ #lines + 1 ] , states = line:gsub( line , "state{0}=(%d%d)" ,  )

          end


          if string.find( line , "^%s*set%s+" .. panel .. '.' .. old_element .. "%s+" ) then --Is this the line to modify? 
            lines[ #lines + 1 ] = string.sub( line , 1 , 50 ) .. str -- Add parameters for element position and size to table 
            debug_msg( 'Main Element: ' .. panel .. '.' .. old_element .. ' --- ' .. string.sub( line , 1 , 50 ) .. str ) 
            debug_msg(  ' lines[ #lines ] ' .. lines[ #lines ] ) 
            a = 1 
          elseif a then 
            lines[ #lines + 1 ] = string.sub( line , 1 , 50 ) .. attribute_strings[ a ] -- Add parameters for element attributes to table 
            debug_msg( string.sub( line , 1 , 50 ) .. attribute_strings[ a ] ) 
            a = a + 1 
            if a == #attribute_strings then rest_of_file = file:read( "*a" ) break end 
          else
              -- line_count = line_count + 1
              lines[ #lines + 1 ] = line 
          end 


        end 

        msg()

        file:close()
        file = io.open( current_rtconfig_path() , "w" ) --write the file.
        for i , line in ipairs( lines ) do
          file:write( line , "\n" )
        end
        file:write( rest_of_file )
        file:close()

      end 

      function get_rtconfig_element_values( element ) 

        local file = io.open( current_rtconfig_path() , "r" ) --Reading.
        local lines = {}
        local results = {}
  
        for line in file:lines() do
  
            if string.find( line , "^%s*set%s+" .. element .. "%s+" ) then --Is this the line to modify? 


  
             for match in string.gmatch( line , "%b[]" ) do 
              for value in string.gmatch( match , "%d" ) do 
                
              end
             end
  
            end
  
        end 

      end 

      function change_element_to_edit( new_element ) 

        local file = io.open( current_rtconfig_path() , "r" ) --Reading.
        local rtconfig_content = {}
        local rest_of_file
        local line_count = 1
        for line in file:lines() do 
            if string.find( line , "current_element" ) then --Is this the line to modify?
                rtconfig_content[ #rtconfig_content + 1 ] = string.sub( "^%s*set%s+" .. new_element .. '/' )
                rest_of_file = file:read( "*a" )
                break
            else
                line_count = line_count + 1
                rtconfig_content[ #rtconfig_content + 1 ] = line
            end 
        end 
        file:close()
        file = io.open( current_rtconfig_path() , "w+" ) --write the file.
        for i, line in ipairs( rtconfig_content ) do
            file:write( line , "\n")
        end
        file:write( rest_of_file )
        file:close()

      end 

      function change_current_element_to_be_edited( old_element , new_element ) 

        -- parameters_string = ""
        -- parameters_table = {}
        -- local i = 1 
        -- while r.ThemeLayout_GetParameter(i) ~= nil do
        --   local name , description , value = r.ThemeLayout_GetParameter(i) 
        --   parameters_string = parameters_string .. value .. " " 
        --   parameters_table[ i ] = value 
        --   i = i + 1 
        --   if i > 8 then break end 
        -- end 
    
        -- for i = 1 , #  do 
        --   if string.find(rtconfig_content_table[ i ] , "^%s*set%s+" .. new_element .. "%s+" ) then 
        --     new_themeconfig_values = {} 
        --     for value in string.gmatch( rtconfig_content_table[ i ] ,"%d+" ) do 
        --       new_themeconfig_values[ #new_themeconfig_values + 1 ] = value 
        --     end
        --   end
        -- end
    
        -- file = io.open( current_rtconfig_path()  , 'w+' ) 
        -- for i = 1 , #rtconfig_content_table do 
        --   if string.find(rtconfig_content_table[ i ] , "^%s*set%s+" .. old_element .. "%s+" ) then 
    
        --     rtconfig_content_table[ i ] = string.match( rtconfig_content_table[ i ]   ,   "^%s*set%s+[%a%.]+%s+" ) .. "[" .. parameters_string .. "]"
        --     -- r.ShowConsoleMsg( '  set ' .. old_element .. ' [' .. parameters_string .. ']\n' )
        --     file:write( '  set ' .. old_element .. ' [' .. parameters_string .. ']\n' ) 
    
        --   elseif string.find(rtconfig_content_table[ i ] , "^%s*set%s+" .. new_element .. "%s+" ) then 
    
        --     file:write( '  set ' .. new_element .. ' [name_1 name_2 name_3 name_4 ] ;current_edit_element' .. '\n' ) 
    
        --   else
        --     file:write( rtconfig_content_table[ i ] .. '\n' ) 
        --   end
        -- end
    
        -- file:close() 
    
        -- for i = 1 , #new_themeconfig_values do 
        --   r.ThemeLayout_SetParameter( i , new_themeconfig_values[ i ] , true ) 
        --   current_element_parameters_table[ i ] = new_themeconfig_values[ i ]
    
        -- end
    
        -- -- r.UpdateArrange()
        -- refresh_theme()
      end

    -- 

    -- Theme File 

      function set_theme_file_value( theme_file_path, index, new_value) 

        local hFile = io.open( theme_file_path , "r" ) --Reading.
        local lines = {}
        local rest_of_file
        local line_count = 1
        for line in hFile:lines() do
            if string.sub(line, 1, string.len(index)) == index then --Is this the line to modify?
                lines[#lines + 1] = index .. new_value --Change old line into new line.
                rest_of_file = hFile:read("*a")
                break
            else
                line_count = line_count + 1
                lines[#lines + 1] = line
            end
        end
        hFile:close()
        hFile = io.open(theme_file_path , "w") --write the file.
        for i, line in ipairs(lines) do
            hFile:write(line, "\n")
        end
        hFile:write(rest_of_file)
        hFile:close()
      end 
      
    -- 

    -- Layouts 
    -- 

    -- Theme Config 

      function set_theme_config_parameters() 

        r.ThemeLayout_SetParameter( 1  , 3 , true ) 
        r.ThemeLayout_SetParameter( 2  , 2 , true ) 
        r.ThemeLayout_SetParameter( 3  , 2 , true ) 
        r.ThemeLayout_SetParameter( 4  , 3 , true ) 
        r.ThemeLayout_SetParameter( 5  , 2 , true ) 
        r.ThemeLayout_SetParameter( 6  , 2 , true ) 
        r.ThemeLayout_SetParameter( 7  , 3 , true ) 
        r.ThemeLayout_SetParameter( 8  , 2 , true ) 
        r.ThemeLayout_SetParameter( 9  , 2 , true ) 
        r.ThemeLayout_SetParameter( 10 , 3 , true ) 
        r.ThemeLayout_SetParameter( 11 , 5 , true ) 
        r.ThemeLayout_SetParameter( 12 , 3 , true ) 
        r.ThemeLayout_SetParameter( 13 , 5 , true ) 
        r.ThemeLayout_SetParameter( 14 , 1 , true ) 
        r.ThemeLayout_SetParameter( 15 , 1 , true ) 
        r.ThemeLayout_SetParameter( 16 , 1 , true ) 
        r.ThemeLayout_SetParameter( 17 , 1 , true ) 
        r.ThemeLayout_SetParameter( 18 , 1 , true ) 
        r.ThemeLayout_SetParameter( 19 , 1 , true ) 
        r.ThemeLayout_SetParameter( 20 , 1 , true ) 
        r.ThemeLayout_SetParameter( 21 , 1 , true ) 

        for i = 22 , 3000 do 
          r.ThemeLayout_SetParameter( i , math.random( 20 , 30 ) , true ) 
        end
      end 

    --

    -- Management 

      function duplicate_theme( original_theme_name , new_theme_name ) 
        local new_theme_file_path = string.gsub( r.GetLastColorThemeFile() , pattern_12 , new_theme_name ) .. ".ReaperTheme" 
        copy_file( string.gsub( r.GetLastColorThemeFile() , pattern_12 , original_theme_name ) .. ".ReaperTheme" , new_theme_file_path ) 

            -- r.ClearConsole()
            -- r.ShowConsoleMsg(     tostring(     current_theme_folder_name     )  .. "test"      )
        
        local new_theme_folder_path = r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. new_theme_name
        local old_theme_folder_path = get_theme_folder_path( original_theme_name ) 
        copy_folder( old_theme_folder_path, new_theme_folder_path ) 
        
        r.OpenColorThemeFile( new_theme_file_path ) 
        set_theme_file_value( r.GetLastColorThemeFile() , "ui_img=" , new_theme_name ) 
        refresh_theme()
        get_theme_list() 

      end 

      function delete_theme( theme_name ) 
        local folder                    = string.match( get_theme_folder_path( theme_name ) , pattern_1 )
        local theme_file_delete_path    = string.gsub( r.GetLastColorThemeFile() , pattern_12 , theme_name ) 
        local theme_folder_delete_path  = string.gsub( r.GetLastColorThemeFile() , pattern_12 , folder ) 
  
        delete_folder(  theme_folder_delete_path ) 
        delete_file(    theme_file_delete_path .. '.ReaperTheme' ) 
        get_theme_list() 
      end 

      function create_new_theme( name ) -- requires create_folder() 
    
        create_folder( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. name)
    
        -- rtconfig 
    
          file = io.open( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. name .. sep .. 'rtconfig.txt' , 'w+' ) 
    
          -- Globals
    
            file:write(
            ';[GLOBALS]\n' ..
            ' version 6.0\n' ..
            ' use_pngs 1\n' ..
            ' use_overlays 1\n' ..
            ' tinttcp 298\n' ..
            ' peaksedges 0\n' ..
            ' no_meter_reclbl 1\n' ..
            ' envcp_min_height 29\n' ..
            ' gen_vol_zeroline FF000000\n' ..
            ' gen_pan_zeroline FF000000\n' ..
            ' item_volknobfg 85000000 FF778485 00474F4F\n' ..
            ' mcp_showborders 0\n' ..
            ' mcp_vupeakheight 2\n' ..
            ' mcp_mastervupeakheight 4\n' ..
            ' mcp_altmeterpos 0\n' ..
            ' mcp_vol_zeroline FF666666\n' ..
            ' mcp_pan_zeroline 85000000\n' ..
            ' mcp_min_height 240\n' ..
            ' mcp_voltext_flags 5 5\n' ..
            ' tcp_showborders 0\n' ..
            ' tcp_vupeakwidth 2\n' ..
            ' tcp_vol_zeroline FF666666\n' ..
            ' tcp_pan_zeroline 66000000\n' ..
            ' tcp_master_minheight 56\n' ..
            ' tcp_voltext_flags 12\n' ..
            ' tcp_heights 4 25 50 64  ; supercollapsed, collapsed, small(norecarm), recarm size\n' ..
            ' tcp_heights 1 31 50 64   ; supercollapsed, collapsed, small(norecarm), recarm size\n' ..
            ' tcp_folderindent 0\n' ..
            ' trans_speed_zeroline 85000000\n' ..
            ' transport_showborders 0\n' ..
            ' misc_dpi_translate 134 150\n' ..
            ' misc_dpi_translate 174 200\n\n' ) 
    
          -- 
    
          -- Define Parameters 
            
            file:write( ';[DEFINED_PARAMETERS]\n' )
              for i = 0, 3000 do             -- name             desc            def       min        max
                file:write(' define_parameter ' .. string.gsub( new_theme_name , ' ' , '_' ) .. '_' .. i .. ' desc_' .. i .. ' 0' .. ' -9999' .. ' 9999\n' ) 
              end 
            file:write( '\n' )
    
          -- 
    
          -- Macros 
    
            file:write( ';[MACROS]\n' ) 
            file:write( ' set selected + ?track_selected 1 0\n' ..
                        ' set armed    + ?recarm 2 0\n' .. 
                        ' set mixer    + ?mixer_visible 4 0\n' .. 
                        ' set state    + + selected armed mixer\n' )
    
    
          -- 

          -- Colours 

            file:write( ';[COLOURS]\n' ) 
            file:write( ' set track_color     [ 000 000 000 255 ]\n' ..
                        ' set black_and_white [ 000 000 000 255 ]\n' ..
                        ' set black           [ 000 000 000 255 ]\n' ..
                        ' set white           [ 255 255 255 255 ]\n' ..
                        ' set red             [ 255 000 000 255 ]\n' ..
                        ' set purple          [ 255 000 255 255 ]\n' ..
                        ' set blue            [ 000 000 255 255 ]\n' ..
                        ' set green           [ 000 255 000 255 ]\n' ..
                        ' set yellow          [ 255 255 000 255 ]\n' ..
                        ' set orange          [ 255 128 000 255 ]\n' )

          -- 
    
          -- Default Layout
    
            file:write( ';[DEFAULT_LAYOUT]\n' )
    
            for p , panel_table in pairs( main_table ) do 
              -- file:write( ' ;[' .. p .. ']\n' ) 
    
              for e , element_table in pairs( panel_table ) do 

                file:write( string.format( "%-50s" , ' set ' .. p .. '.' .. e ) .. ' [10 2 20 20 0 0 0 0]' .. '\n\t' )
                                                          
                for a , v in pairs( element_table[ 'attributes' ] ) do 
                  
                  if string.len( a ) > 0 then 

                    if  string.match( a , '%[(%a+)%]' ) == 'color' then 
                      file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [255 255 255 255 0 0 0 255] \n\t' ) 
                    end

                    if  string.match( a , '%[(%a+)%]' ) == 'div' then 
                      file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [0 0] \n\t' ) 
                    end

                    if  string.match( a , '%[(%a+)%]' ) == 'margin' then 
                      file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [0 0 0 0 .5] \n\t' ) 
                    end

                    if  string.match( a , '%[(%a+)%]' ) == 'font' then 
                      file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [1] \n\t' ) 
                    end

                    if  string.match( a , '%[(%a+)%]' ) == 'fadermode' then 
                      file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [0] \n\t' ) 
                    end

                    if  string.match( a , '%[(%a+)%]' ) == 'mode' then 
                      file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [0] \n\t' ) 
                    end

                  end 
                end
              end 
              file:write( '\n' ) 
            end
    
          -- 
    
          file:close() 
              
          msg()
        -- 
    
        -- .reapertheme 
    
          file = io.open( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. name .. '.ReaperTheme' , 'w+' )
          file:write(
            '[color theme]\n' ..
            '[REAPER]\n' ..
            'ui_img=' .. name )
          file:close() 
    
        -- 
    
        r.OpenColorThemeFile( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. name .. '.ReaperTheme' ) 
        get_theme_list() 
  
      end 


    -- 

    -- Other 

      function get_theme_list() -- Get all unzipped theme names except current one
        theme_list_table = {} 
        local i = -1
        repeat
          local theme = r.EnumerateFiles(r.GetResourcePath() .. sep .. 'ColorThemes', i )
          if theme and string.match(theme, ".ReaperTheme$") and string.match(theme, '^[^%.]+') ~= string.match(r.GetLastColorThemeFile(), "([^" .. sep .. "]+).[Rr][Ee][Aa][Pp][Ee][Rr][Tt][Hh][Ee][Mm][Ee]$") then
            theme = string.gsub( theme , ".ReaperTheme$" , "" ) 
            table.insert( theme_list_table , theme ) 
          end 
          table.sort( theme_list_table )
          theme_list_string = ""
          for i = 1 , #theme_list_table do 
            theme_list_string = theme_list_string .. theme_list_table[ i ] .. "\31" 
          end
          i = i + 1
        until not theme and i > 0 
      end 

      function refresh_theme()
        r.OpenColorThemeFile( r.GetLastColorThemeFile() )
        r.UpdateArrange()
        r.UpdateTimeline()
      end 

      function theme_is_zipped() --return if true or false
        if not r.file_exists( r.GetLastColorThemeFile()) then
            return true
        else
            return false
        end
      end 

      function create_theme_parameters_table( element , columns , rows , states ) 

        theme_parameters_table[ element ] = {} 

        local parameter = 1 
        theme_parameters_table[ element ][ states ] = {} 
        for i = 1 , #states do 
          theme_parameters_table[ element ][ states ][ i ] = parameter 
          parameter = parameter + 1 
        end 

        local parameter = 20 
        theme_parameters_table[ element ][ boundaries_w ] = {} 
        for i = 1 , ( columns - 1 ) do 
          theme_parameters_table[ element ][ boundaries_w ][ i ] = parameter 
          parameter = parameter + 1 
        end 
        
        local parameter = 25 
        theme_parameters_table[ element ][ boundaries_h ] = {} 
        for i = 1 , ( rows - 1 ) do 
          theme_parameters_table[ element ][ boundaries_h ][ i ] = parameter 
          parameter = parameter + 1 
        end 
        
        local parameter = 30  
        for i = 1 , rows do 
          theme_parameters_table[ element ][ position_and_size_values ][ i ] = {} 
          for ii = 1 , columns do 
            theme_parameters_table[ element ][ position_and_size_values ][ i ][ ii ] = parameter 
            parameter = parameter + 1 
          end
        end 
        
      end

    -- 

  --  

  -- Debug  

    function msg() 

      if debug_log then 
        local str = ''
        if current_element_parameters_x  then str = str .. 'current_element_parameters_x  = ' .. current_element_parameters_x  .. '\n'   end 
        if current_element_parameters_y  then str = str .. 'current_element_parameters_y  = ' .. current_element_parameters_y  .. '\n'   end 
        if current_element_parameters_w  then str = str .. 'current_element_parameters_w  = ' .. current_element_parameters_w  .. '\n'   end 
        if current_element_parameters_h  then str = str .. 'current_element_parameters_h  = ' .. current_element_parameters_h  .. '\n'   end 
        if current_element_parameters_ls then str = str .. 'current_element_parameters_ls = ' .. current_element_parameters_ls .. '\n'   end 
        if current_element_parameters_ts then str = str .. 'current_element_parameters_ts = ' .. current_element_parameters_ts .. '\n'   end 
        if current_element_parameters_rs then str = str .. 'current_element_parameters_rs = ' .. current_element_parameters_rs .. '\n'   end 
        if current_element_parameters_bs then str = str .. 'current_element_parameters_bs = ' .. current_element_parameters_bs .. '\n\n' end 
        if state                         then str = str .. 'state                         = ' .. state                         .. '\n\n'   end 

        if not debug_string then debug_string = '' end 

        file = io.open( r.GetResourcePath() .. sep .. "Scripts" .. sep .. "damo" .. sep .. "debug log - theme creator.txt", "a" ) 

        if not new_debug then file:write( "\n\n\n*************************************************************************\n*** DEBUG LOG - " .. os.date( '%Y-%m-%d %H:%M:%S' ) .. ' ***\n*************************************************************************' ) new_debug = true end 
        file:write( '\n' .. str .. '\n' ) 
        file:write( debug_string ) 
        file:write( '\n\n*************************************************************************\n\n' ) 
        file:close() 
      end 

      debug_string = nil 

    end 

    function msg_clear() 
      file = io.open( r.GetResourcePath() .. sep .. "Scripts" .. sep .. "damo" .. sep .. "debug log - theme creator.txt", "w+" ) 
      file:write( '\n\n*************************************************************************\n\n' ) 
      file:close() 
    end 

    function debug_msg( msg ) 
      if debug_log then 
        if not debug_string then debug_string = '' end 
        debug_string = debug_string .. os.date( ' %Y-%m-%d %H:%M:%S' ) .. " - \n\t\t\t" .. msg .. "\n\n"
      end
    end 

  -- 

-- 

-- START UP 

  r.ClearConsole() 

  get_theme_list() 
  
  msg_clear() 
  
  set_theme_config_parameters()

--

-- GUI 

  -- Create Window 

    function loop()

      local visible , open = r.ImGui_Begin( ctx , "Theme Editor" , true , r.ImGui_WindowFlags_NoCollapse() | r.ImGui_WindowFlags_MenuBar() )

      if visible then 

  -- 

  -- Menu Bar 

    -- Create Menu

      if r.ImGui_BeginMenuBar ( ctx ) then 

      if r.ImGui_BeginMenu( ctx , 'Theme Management' ) then 

    --

    -- New Blank Theme 

      if r.ImGui_MenuItem( ctx , 'New' )  then 
        new_theme_name = 'New Theme' 
      end 

    -- 

    -- Duplicate Theme

      if not  theme_is_zipped() and r.ImGui_BeginMenu( ctx , 'Duplicate' ) then 

        for i = 0 , #theme_list_table do 

          if i == 0 then 
            if r.ImGui_MenuItem( ctx , string.match( r.GetLastColorThemeFile() , pattern_12 ) ) then 
              selected_theme        = string.match( r.GetLastColorThemeFile() , pattern_12 ) 
              duplicate_theme_name  = selected_theme
            end 
            r.ImGui_Separator( ctx )
          else 
            if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 
              selected_theme        = theme_list_table[i] 
              duplicate_theme_name  = selected_theme
            end 
        end 

        end

        r.ImGui_EndMenu( ctx ) 
      end 

    --

    -- Open Theme 
      
      if r.ImGui_BeginMenu( ctx , 'Open' ) then 

        for i = 1, #theme_list_table do 

          if theme_list_table[i] == nil then break end 

          if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 

            r.OpenColorThemeFile( string.gsub( r.GetLastColorThemeFile() , pattern_1 , theme_list_table[i] .. ".ReaperTheme" ) )
            get_theme_list() 

          end 

        end

        
        r.ImGui_EndMenu( ctx ) 
      end 

    -- 

    -- Delete Theme 

      if r.ImGui_BeginMenu( ctx , 'Delete') then 

        for i = 1, #theme_list_table do 
          if theme_list_table[i] == nil then break end 
          if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 
            rv = r.ShowMessageBox('Delete "' .. theme_list_table[i] .. '" theme?' , "" , 1 ) 
            if rv == 1 then 
              delete_theme( theme_list_table[i] ) 
            end 
          end 
        end 

        r.ImGui_EndMenu( ctx )
      end 

      r.ImGui_Separator( ctx )

    -- 
    
    -- Open rtconfig File 

      if r.ImGui_BeginMenu( ctx , 'rtconfig Files' ) then 

        for i = 0 , #theme_list_table do 

          if i == 0 then 
            if r.ImGui_MenuItem( ctx , string.match( r.GetLastColorThemeFile() , pattern_12 ) ) then 
              local folder                    = string.match( get_theme_folder_path( string.match( r.GetLastColorThemeFile() , pattern_12 ) ) , pattern_1 )
              local folder_path  = string.gsub( r.GetLastColorThemeFile() , pattern_1 , folder ) 
              open_file( folder_path .. sep .. "rtconfig.txt" ) 
            end 
            r.ImGui_Separator( ctx )
          else 
            if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 
              open_file( get_theme_folder_path( theme_list_table[i] ) .. sep .. "rtconfig.txt" ) 
            end 
        end 

        end

        r.ImGui_EndMenu( ctx ) 
      end 

    -- 

    -- Open Theme File 

      if r.ImGui_BeginMenu( ctx , 'Theme Files' ) then 

        for i = 0 , #theme_list_table do 

          if i == 0 then 
            if r.ImGui_MenuItem( ctx , string.match( r.GetLastColorThemeFile() , pattern_12 ) ) then 
              open_file( r.GetLastColorThemeFile() ) 
            end 
            r.ImGui_Separator( ctx )
          else 
            if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 
              open_file( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. theme_list_table[i] .. ".ReaperTheme" ) 
            end 
        end 

        end

        r.ImGui_EndMenu( ctx ) 
      end 

    -- 

    -- Open themeconfig 

      if r.ImGui_MenuItem( ctx , 'Theme Config' ) then 
        open_file( r.GetResourcePath() .. sep .. 'reaper-themeconfig.ini' ) 
      end 

    --

    -- Refresh Theme 

      if r.ImGui_MenuItem( ctx , 'Refresh Theme' )  then 
        refresh_theme() 
      end 

    -- 

    -- Debug Script 

      if debug_log then  
        if r.ImGui_MenuItem( ctx , 'Debug Script' )  then 
          msg() 
        end
      end 

    --

    -- Test Function 

      if r.ImGui_MenuItem( ctx , 'Function Test' )  then 
        -- set_theme_config_parameters() 

        set_rtconfig_element_values( 'layout' , 'tcp.recarm' )    

      end

    -- 

    -- End Menu

          r.ImGui_EndMenu( ctx ) 
        end 

    --

    -- Current Theme 

      r.ImGui_TextDisabled( ctx , '  CURRENT THEME:') ; r.ImGui_SameLine( ctx ) 
      r.ImGui_Text( ctx , string.match( r.GetLastColorThemeFile() , pattern_12 ) )
      if theme_is_zipped() == true then r.ImGui_SameLine( ctx ) r.ImGui_TextColored( ctx , 0xFF5555FF , ' (zipped)' ) end ; r.ImGui_SameLine( ctx ) 
    
    -- 

    -- End MenuBar

      r.ImGui_EndMenuBar( ctx ) 
      end 

    -- 

    -- Menu Results

      if new_theme_name       then modal_window_new_theme_name()       end 
      if duplicate_theme_name then modal_window_duplicate_theme_name() end 

    -- 
  -- 

  -- Tab Bar 

    -- Create Tab Bar

      if r.ImGui_BeginTabBar( ctx , "tab_bar" ) then 

        for i = 1 , #panel_list do 

          if r.ImGui_BeginTabItem( ctx , string.format( "%-15s" , panel_list[ i ] ) ) then 

            selected_panel = panel_list[ i ] 

    -- 

    -- Element Select Combo 

      if not selected_elements_table[ i ] then selected_elements_table[ i ] = 0 end 
      r.ImGui_Spacing( ctx ) 
      r.ImGui_SetNextItemWidth( ctx , 150 ) 
      rv , selected_elements_table[ i ] = r.ImGui_Combo( ctx , '##element_list' , selected_elements_table[ i ] , element_combo_strings_table[ i ] , 20 ) 

      if rv then 
        old_element = new_element
        new_element = element_list[ i ][ selected_elements_table[ i ] + 1 ] 
        debug_msg("\n\t\t\tSelected Panel: " .. selected_panel .. "\n\t\t\tSelected Element: " .. panel_list[ i ] .. '.' .. new_element ) 
        set_rtconfig_element_values( panel_list[ i ] , old_element , new_element ) 
      end 

      r.ImGui_SameLine( ctx ) ; r.ImGui_TextWrapped( ctx , main_table[ panel_list[ i ] ][ element_list[ i ][ selected_elements_table[ i ] + 1 ] ][ 'desc' ] ) 

    -- 

    -- Layouts 
    --

    -- States 

      r.ImGui_Spacing( ctx ) 
      
      
      
      if r.ImGui_CollapsingHeader( ctx , 'States' ) then 
        
        if string.find( panel_list[ i ] , 'tcp' ) or string.find( panel_list[ i ] , 'mcp' ) then 
          rv_track_selected , track_selected = reaper.ImGui_Checkbox( ctx, "Track is Selected", track_selected ) ; r.ImGui_SameLine( ctx ) 
          if not string.find( panel_list[ i ] , 'master' ) then 
            rv_recarm , recarm = reaper.ImGui_Checkbox( ctx, "Track is Armed", recarm ) ; r.ImGui_SameLine( ctx ) 
            rv_mixer_visible , mixer_visible = reaper.ImGui_Checkbox( ctx, "Mixer is Visible", mixer_visible ) 
          end
        end 

        state = 0 
        if track_selected then state = state + 1 end 
        if recarm         then state = state + 2 end 
        if mixer_visible  then state = state + 4 end 
        if rv_track_selected or rv_recarm or rv_mixer_visible then debug_msg( "Changed state to: " .. state ) end 

      end 

      

    -- 

    -- Boundaries 

      r.ImGui_Spacing( ctx ) 
      if r.ImGui_CollapsingHeader( ctx , 'Boundaries' ) then 
        
        r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_rows ,    rows    = reaper.ImGui_SliderInt( ctx , "Rows"    , rows    , 1 , 4 ) ; r.ImGui_SameLine( ctx ) 
        r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_columns , columns = reaper.ImGui_SliderInt( ctx , "Columns" , columns , 1 , 4 )

      end 

    -- 

    -- Position, Size & Alignment 

      r.ImGui_Spacing( ctx ) 
      if r.ImGui_CollapsingHeader( ctx , 'Position, Size & Alignment' ) then 
        
        r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_x  , current_element_parameters_x   = r.ImGui_DragInt( ctx , "X   " , current_element_parameters_x   , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_y  , current_element_parameters_y   = r.ImGui_DragInt( ctx , "Y   " , current_element_parameters_y   , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_w  , current_element_parameters_w   = r.ImGui_DragInt( ctx , "W   " , current_element_parameters_w   , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_h  , current_element_parameters_h   = r.ImGui_DragInt( ctx , "H   " , current_element_parameters_h   , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_ls , current_element_parameters_ls  = r.ImGui_DragInt( ctx , "LS  " , current_element_parameters_ls  , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_ts , current_element_parameters_ts  = r.ImGui_DragInt( ctx , "TS  " , current_element_parameters_ts  , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_rs , current_element_parameters_rs  = r.ImGui_DragInt( ctx , "RS  " , current_element_parameters_rs  , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
        rv_bs , current_element_parameters_bs  = r.ImGui_DragInt( ctx , "BS  " , current_element_parameters_bs  , .1 , 0 , 3999 ) 

        if rv_x  then r.ThemeLayout_SetParameter( 1 , current_element_parameters_x  , true ) ; r.ThemeLayout_RefreshAll() end
        if rv_y  then r.ThemeLayout_SetParameter( 2 , current_element_parameters_y  , true ) ; r.ThemeLayout_RefreshAll() end
        if rv_w  then r.ThemeLayout_SetParameter( 3 , current_element_parameters_w  , true ) ; r.ThemeLayout_RefreshAll() end
        if rv_h  then r.ThemeLayout_SetParameter( 4 , current_element_parameters_h  , true ) ; r.ThemeLayout_RefreshAll() end
        if rv_ls then r.ThemeLayout_SetParameter( 5 , current_element_parameters_ls , true ) ; r.ThemeLayout_RefreshAll() end
        if rv_ts then r.ThemeLayout_SetParameter( 6 , current_element_parameters_ts , true ) ; r.ThemeLayout_RefreshAll() end
        if rv_rs then r.ThemeLayout_SetParameter( 7 , current_element_parameters_rs , true ) ; r.ThemeLayout_RefreshAll() end
        if rv_bs then r.ThemeLayout_SetParameter( 8 , current_element_parameters_bs , true ) ; r.ThemeLayout_RefreshAll() end

      end 

    -- 

    -- End Tab Item 

            r.ImGui_EndTabItem( ctx ) 
          end 

        end

    --

    -- End Tab Bar

        r.ImGui_EndTabBar( ctx ) 
      end 
    --

  -- 

  -- Destroy 

        r.ImGui_End( ctx ) 
        end 

        if open then
          r.defer( loop )
        else
          r.ImGui_DestroyContext( ctx )
        end 

    end 

  --

    loop() 

-- 

