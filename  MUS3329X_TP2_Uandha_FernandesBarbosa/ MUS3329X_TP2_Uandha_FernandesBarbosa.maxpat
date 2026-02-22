{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 0.0, 0.0, 1000.0, 780.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-189",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 27.0, 192.0, 20.0 ],
                    "presentation_linecount": 3,
                    "text": "<<On/Off Data from python script"
                }
            },
            {
                "box": {
                    "id": "obj-188",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 114.0, 97.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-186",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 30.0, 23.0, 42.0, 42.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-184",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 284.0, 746.0, 160.0, 22.0 ],
                    "text": "read #insert_the_model.json"
                }
            },
            {
                "box": {
                    "id": "obj-182",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 426.5, 890.0, 450.0, 141.0 ],
                    "presentation_linecount": 18,
                    "text": "4. Training Model \n\n- hiddenlayers: defines the architecture of the neural network. \n- activation: controls how neurons transform input signals (linear 1, 2 sigmoid, etc.)\n- outputactivation: stable output behavior.\n- batchsize: number of samples used before updating weights.\n- maxiter:  maximum number of training iterations.\n- learnrate: step size of weight updates.\n- validation: percentage of data reserved for validation. \n"
                }
            },
            {
                "box": {
                    "id": "obj-181",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 182.0, 717.0, 85.0, 20.0 ],
                    "presentation_linecount": 2,
                    "text": "<<Prediction"
                }
            },
            {
                "box": {
                    "id": "obj-180",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 7,
                    "outlettype": [ "float", "float", "float", "float", "float", "float", "float" ],
                    "patching_rect": [ 961.0, 1295.0, 695.0, 22.0 ],
                    "text": "unpack f f f f f f f"
                }
            },
            {
                "box": {
                    "id": "obj-179",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 961.0, 1257.0, 80.0, 22.0 ],
                    "text": "r predparams"
                }
            },
            {
                "box": {
                    "id": "obj-177",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 281.5, 1206.0, 102.0, 22.0 ],
                    "text": "send predparams"
                }
            },
            {
                "box": {
                    "id": "obj-175",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 130.5, 716.5, 41.5, 41.5 ]
                }
            },
            {
                "box": {
                    "id": "obj-173",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 69.0, 725.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-172",
                    "linecount": 7,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 118.0, 1167.0, 98.0, 102.0 ],
                    "text": "0.593858 0.177952 0.534485 0.000053 0.006386 0.289858 0.618209"
                }
            },
            {
                "box": {
                    "id": "obj-170",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 284.47727272727275, 780.0, 121.0, 22.0 ],
                    "text": "write my_modelt.json"
                }
            },
            {
                "box": {
                    "id": "obj-167",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 166.9545454545455, 1050.0, 136.0, 22.0 ],
                    "text": "predictpoint prediction"
                }
            },
            {
                "box": {
                    "id": "obj-164",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 825.0, 705.0, 125.0, 22.0 ],
                    "text": "write dataset_in1.json"
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-162",
                    "inputrangemode": 1,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1482.0, 1387.0, 20.0, 140.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-156",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 238.0, 1460.0, 202.0, 100.0 ],
                    "presentation_linecount": 3,
                    "text": "Neural Network Output Mapping VST 1 Modulation\n\nThe neural network’s output serves as a control source for Plugin 1 (AAS)\n"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 514.0, 1583.0, 79.0, 22.0 ],
                    "text": "value volume"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-154",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 456.0, 1583.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-155",
                    "inputrangemode": 1,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 456.0, 1424.0, 20.0, 140.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 269.0, 1696.0, 77.0, 33.0 ],
                    "presentation_linecount": 2,
                    "text": "Upload Plugin 1 >>>"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 422.0, 2145.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 428.0, 1893.0, 84.0, 203.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[3]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~[1]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 904.0, 1712.0, 490.0, 60.0 ],
                    "presentation_linecount": 15,
                    "text": "Neural Network Output Mapping VST 2 Modulation\n\nThe neural network’s output serves as a control source for Plugin 2 (Oxid)\n"
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1668.0, 1560.0, 73.0, 22.0 ],
                    "text": "value volum"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-135",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1614.0, 1560.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1614.0, 1616.0, 114.0, 22.0 ],
                    "presentation_linecount": 2,
                    "text": "\"Master Volume\" $1"
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-137",
                    "inputrangemode": 1,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1614.0, 1400.0, 20.0, 140.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1536.0, 1560.0, 59.0, 22.0 ],
                    "text": "value mix"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-126",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1482.0, 1560.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1482.0, 1616.0, 121.0, 22.0 ],
                    "presentation_linecount": 2,
                    "text": "\"Mix String/Synth\" $1"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1398.0, 1560.0, 56.0, 22.0 ],
                    "text": "value vcf"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-78",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1344.0, 1560.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1344.0, 1616.0, 122.0, 22.0 ],
                    "presentation_linecount": 3,
                    "text": "\"VCF Resonance\" $1"
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-84",
                    "inputrangemode": 1,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1344.0, 1400.0, 20.0, 140.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1255.0, 1560.0, 53.0, 22.0 ],
                    "text": "value lfo"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-71",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1201.0, 1560.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1201.0, 1616.0, 95.0, 22.0 ],
                    "presentation_linecount": 3,
                    "text": "\"LFO Speed\" $1"
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-75",
                    "inputrangemode": 1,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1201.0, 1400.0, 20.0, 140.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1104.0, 1560.0, 80.0, 22.0 ],
                    "text": "value release"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-57",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1050.0, 1560.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1616.0, 69.0, 22.0 ],
                    "presentation_linecount": 2,
                    "text": "Release $1"
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-65",
                    "inputrangemode": 1,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1050.0, 1400.0, 20.0, 140.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 969.0, 1560.0, 64.0, 22.0 ],
                    "text": "value tune"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-47",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 915.0, 1560.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 915.0, 1616.0, 52.0, 22.0 ],
                    "text": "Tune $1"
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-38",
                    "inputrangemode": 1,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 919.0, 1387.0, 20.0, 140.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 666.0, 630.0, 132.0, 100.0 ],
                    "presentation_linecount": 4,
                    "text": "2. Dataset Generation\n\nPrint and save the dataset from the inputs and outputs correlation.\n"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1005.5, 705.0, 132.0, 22.0 ],
                    "text": "write dataset_out1.json"
                }
            },
            {
                "box": {
                    "id": "obj-165",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 403.9545454545455, 1091.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 403.9545454545455, 1050.0, 159.0, 22.0 ],
                    "text": "substitute predictpoint buffer"
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "list" ],
                    "patching_rect": [ 403.9545454545455, 1150.0, 179.0, 22.0 ],
                    "text": "fluid.buf2list @source prediction"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 584.409090909091, 1050.0, 162.0, 22.0 ],
                    "text": "buffer~ prediction @samps 7"
                }
            },
            {
                "box": {
                    "id": "obj-157",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 69.0, 828.0, 162.0, 22.0 ],
                    "text": "predictpoint in_dat prediction"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 69.0, 791.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-151",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 98.0, 1052.0, 60.0, 20.0 ],
                    "text": "Loss >> "
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 283.9545454545455, 828.0, 176.0, 22.0 ],
                    "text": "fit input_dataset output_dataset"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "linecount": 9,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 284.0, 890.0, 129.0, 129.0 ],
                    "text": "fluid.mlpregressor~ face_feed @hiddenlayers 20 20 20 @activation 3 @outputactivation 1 @batchsize 1 @maxiter 1000 @learnrate 0.01 @validation 0.05"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 825.0, 667.0, 359.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 825.0, 630.0, 359.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 825.0, 409.0, 455.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1012.0, 541.0, 115.0, 22.0 ],
                    "text": "addpoint $1 out_dat"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1535.0, 1126.0, 150.0, 22.0 ],
                    "text": "buffer~ out_dat @samps 7"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "buffer" ],
                    "patching_rect": [ 1261.0, 1126.0, 259.0, 22.0 ],
                    "text": "fluid.list2buf @destination out_dat @autosize 0"
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1069.0, 868.5, 181.0, 87.0 ],
                    "text": "3. Output Parameters \n\nVST parameters mappings that control incoming MIDI data from the Strudel REPL.\n"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1331.0, 1083.0, 415.0, 22.0 ],
                    "text": "0.65332 0.004575 0.006356 0.002445 0.006241 0.257691 0.545872"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1261.0, 1023.0, 541.0, 22.0 ],
                    "text": "pack f f f f f f f"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1261.0, 823.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1783.0, 959.0, 74.0, 22.0 ],
                    "text": "value volum"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1696.0, 959.0, 59.0, 22.0 ],
                    "text": "value mix"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1609.0, 959.0, 56.0, 22.0 ],
                    "text": "value vcf"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1522.0, 959.0, 53.0, 22.0 ],
                    "text": "value lfo"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1435.0, 959.0, 80.0, 22.0 ],
                    "text": "value release"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1348.0, 959.0, 64.0, 22.0 ],
                    "text": "value tune"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1261.0, 959.0, 79.0, 22.0 ],
                    "text": "value volume"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1290.0, 409.0, 341.0, 74.0 ],
                    "text": "1. Input and Output  Dataset\n\nMap the input features to their corresponding target outputs to construct the dataset for neural network training.\n"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 825.0, 314.0, 53.0, 53.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 825.0, 491.0, 112.0, 22.0 ],
                    "text": "counter"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 825.0, 541.0, 107.0, 22.0 ],
                    "text": "addpoint $1 in_dat"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 384.0, 552.0, 77.0, 62.0 ],
                    "text": "0.000881 0.00054 0.000666 0.00795"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 92.0, 608.0, 103.0, 22.0 ],
                    "text": "scale 0. 0.95 0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "buffer" ],
                    "patching_rect": [ 92.0, 660.0, 252.0, 22.0 ],
                    "text": "fluid.list2buf @destination in_dat @autosize 0"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 370.54545454545456, 660.0, 143.0, 22.0 ],
                    "text": "buffer~ in_dat @samps 4"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 92.0, 552.0, 282.45454545454544, 22.0 ],
                    "text": "pak f f f f"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1012.0, 592.0, 163.0, 22.0 ],
                    "text": "fluid.dataset~ output_dataset"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 825.0, 592.0, 156.0, 22.0 ],
                    "text": "fluid.dataset~ input_dataset"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 456.0, 1627.0, 80.0, 22.0 ],
                    "text": "\": Volume\" $1"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 707.0, 2145.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 713.0, 1886.0, 84.0, 203.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[2]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~[1]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[2]"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 643.0, 1681.5, 77.0, 47.0 ],
                    "text": "Upload Plugin 2  >>>"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 794.0, 1829.0, 71.0, 22.0 ],
                    "text": "print names"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 1640.0, 71.0, 22.0 ],
                    "text": "params"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 1674.0, 71.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 1705.0, 71.0, 22.0 ],
                    "text": "plug"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "list", "int", "", "", "" ],
                    "patching_rect": [ 736.0, 1788.0, 221.99999999999977, 22.0 ],
                    "save": [ "#N", "vst~", "loaduniqueid", 0, "Oxid", ";" ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "vst~[3]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "vst~[3]",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "vst~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "pluginname": "Oxid.vstinfo",
                            "plugindisplayname": "Oxid",
                            "pluginsavedname": "",
                            "pluginsaveduniqueid": 1870162276,
                            "version": 1,
                            "isbank": 0,
                            "isbase64": 1,
                            "blob": "602.CMlaKA....fQPMDZ....A7FdoQF..bBE.....AEZgoWYjAxSxMFZkMGcxEF..................HfGzYlYvA..A.vS3kFYeEiKv3BL......A....TnEldkQFHOI2XnU1bzIWX.....2Exy+C....LtwI4+B.......8KP3t6t6t6ta+C....3+oQ3+.........+O........v+C........7+.........+O3PQx.Cvhl4C....vFznz+b3oa19K+P+O.....................................................................................L......147Ooppppp56U+STUUUUUIdz+.........+O.....MAJ58SUUUUUUUE0+vUUUUUUUe9O8+++++++e+igHhHhHh.4+.........9O........v+C........3+LEtdT35Qg7OzLyLyLyLS+K........7+.........+O........v+CA......v4+LHhHhHhHp8O........S+C.............................v+C...............................fiBWOJb8HE.MyLyLyLyzAPdT35QgqGs+C........3+LyLyLyLyL8OZlYlYlYlY+CtdT35Qgq2+PgqGEtdT39ORgqGEtdTf+C........3+LyLyLyLyL8OZlYlYlYlY+CbmuepzMIl+nYlYlYlYl7OP.....EZgoWYjAxSxMFZkMGcxEF"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "Oxid",
                                    "origin": "Oxid.vstinfo",
                                    "type": "VST",
                                    "subtype": "Instrument",
                                    "embed": 0,
                                    "snapshot": {
                                        "pluginname": "Oxid.vstinfo",
                                        "plugindisplayname": "Oxid",
                                        "pluginsavedname": "",
                                        "pluginsaveduniqueid": 1870162276,
                                        "version": 1,
                                        "isbank": 0,
                                        "isbase64": 1,
                                        "blob": "602.CMlaKA....fQPMDZ....A7FdoQF..bBE.....AEZgoWYjAxSxMFZkMGcxEF..................HfGzYlYvA..A.vS3kFYeEiKv3BL......A....TnEldkQFHOI2XnU1bzIWX.....2Exy+C....LtwI4+B.......8KP3t6t6t6ta+C....3+oQ3+.........+O........v+C........7+.........+O3PQx.Cvhl4C....vFznz+b3oa19K+P+O.....................................................................................L......147Ooppppp56U+STUUUUUIdz+.........+O.....MAJ58SUUUUUUUE0+vUUUUUUUe9O8+++++++e+igHhHhHh.4+.........9O........v+C........3+LEtdT35Qg7OzLyLyLyLS+K........7+.........+O........v+CA......v4+LHhHhHhHp8O........S+C.............................v+C...............................fiBWOJb8HE.MyLyLyLyzAPdT35QgqGs+C........3+LyLyLyLyL8OZlYlYlYlY+CtdT35Qgq2+PgqGEtdT39ORgqGEtdTf+C........3+LyLyLyLyL8OZlYlYlYlY+CbmuepzMIl+nYlYlYlYl7OP.....EZgoWYjAxSxMFZkMGcxEF"
                                    },
                                    "fileref": {
                                        "name": "Oxid",
                                        "filename": "Oxid_20260221.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "1a59557dfb7840265fabfd1183585786"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "vst~ Oxid",
                    "varname": "vst~[3]",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 612.0, 1360.0, 79.0, 22.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 672.0, 1326.0, 49.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 612.0, 1326.0, 49.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 612.0, 1407.0, 81.0, 22.0 ],
                    "text": "midiformat"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 612.0, 1282.0, 139.0, 22.0 ],
                    "text": "notein"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 769.0, 1282.0, 156.0, 33.0 ],
                    "text": "<<<MIDI Input from Strudel REPL "
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 506.57142857142856, 1825.0, 71.0, 22.0 ],
                    "text": "print names"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 372.0, 1674.0, 78.0, 22.0 ],
                    "text": "params"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 372.0, 1704.0, 79.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 374.0, 1736.0, 77.0, 22.0 ],
                    "text": "plug"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "list", "int", "", "", "" ],
                    "patching_rect": [ 456.0, 1788.0, 196.0, 22.0 ],
                    "save": [ "#N", "vst~", "loaduniqueid", 0, "AAS", "Player", ";" ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "vst~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "vst~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "vst~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "pluginname": "AAS Player.vstinfo",
                            "plugindisplayname": "AAS Player",
                            "pluginsavedname": "",
                            "pluginsaveduniqueid": 1095789617,
                            "version": 1,
                            "isbank": 0,
                            "isbase64": 1,
                            "blob": "416.CMlaKA....fQPMDZ....ADDTrEC...P.....APTYlEVcrQG..............................D.Y6oPBiUmbxUlazAkbuclbg0FH8.RLrnPBgMFcoYWYBElaqkDYfzCHhfiYkMSNjISXsHiLyXSKzHVL3zhXwXVNsXFLwLyXzL1M1PVX4HBKJjvX0Imbk4FcPI2amIWXsITXtslSg0VYfzCHhL0cgQ2XnU1bhvhBID1XzklckITXtsFH8.RLrnPBv8Fa4AGZu4VdfzCHwHCKJjvX0Imbk4FcPI2amIWXsITXtsVRjAROfHBNlU1L4PlLg0hLxLiMsPiXwfSKhEiY4zhYvDyLiQyX2XCYgkiHrnPB1Ulbyk1atAROfDCKJjvX0Imbk4FcPI2amIWXs4TXsUFH8.hHFEFcfPCNhvhBILVcxIWYtQGTx81YxEVaBElaqAROfDCKJj.bgIWXsUFckI2bfzCH6oPBI.iK2.SMyLCM2fiL1.CLzvhBIzGKJjPXiQWZ1UlPg41ZNEVakAROfHxT2EFcigVYyIBKJzG"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "AAS Player",
                                    "origin": "AAS Player.vstinfo",
                                    "type": "VST",
                                    "subtype": "Instrument",
                                    "embed": 1,
                                    "snapshot": {
                                        "pluginname": "AAS Player.vstinfo",
                                        "plugindisplayname": "AAS Player",
                                        "pluginsavedname": "",
                                        "pluginsaveduniqueid": 1095789617,
                                        "version": 1,
                                        "isbank": 0,
                                        "isbase64": 1,
                                        "blob": "416.CMlaKA....fQPMDZ....ADDTrEC...P.....APTYlEVcrQG..............................D.Y6oPBiUmbxUlazAkbuclbg0FH8.RLrnPBgMFcoYWYBElaqkDYfzCHhfiYkMSNjISXsHiLyXSKzHVL3zhXwXVNsXFLwLyXzL1M1PVX4HBKJjvX0Imbk4FcPI2amIWXsITXtslSg0VYfzCHhL0cgQ2XnU1bhvhBID1XzklckITXtsFH8.RLrnPBv8Fa4AGZu4VdfzCHwHCKJjvX0Imbk4FcPI2amIWXsITXtsVRjAROfHBNlU1L4PlLg0hLxLiMsPiXwfSKhEiY4zhYvDyLiQyX2XCYgkiHrnPB1Ulbyk1atAROfDCKJjvX0Imbk4FcPI2amIWXs4TXsUFH8.hHFEFcfPCNhvhBILVcxIWYtQGTx81YxEVaBElaqAROfDCKJj.bgIWXsUFckI2bfzCH6oPBI.iK2.SMyLCM2fiL1.CLzvhBIzGKJjPXiQWZ1UlPg41ZNEVakAROfHxT2EFcigVYyIBKJzG"
                                    },
                                    "fileref": {
                                        "name": "AAS Player",
                                        "filename": "AAS Player_20260220.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "c313c5647e63c6f81ec2ebcfa43f886b"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "vst~ AAS Player",
                    "varname": "vst~",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "linecount": 11,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 772.0, 106.0, 426.0, 167.0 ],
                    "text": "<<<Input Parameters\n\nThe input parameters are derived from a Python script using the MediaPipe Face Mesh library. \n\nFour of a total ten gestural features tracked are utilized in this implementation from the camera feed: \n\n1. Mouth Open (Oh), \n2. Bilateral Smile (Right and Left),\n3. Mouth Pucker (Kiss). \n"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 631.0, 563.0, 69.0, 22.0 ],
                    "text": "0.000094"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 566.0, 532.0, 69.0, 22.0 ],
                    "text": "0.000008"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 495.0, 69.0, 22.0 ],
                    "text": "0.000024"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 459.0, 69.0, 22.0 ],
                    "text": "0.029255"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 370.0, 423.0, 69.0, 22.0 ],
                    "text": "0.060912"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 305.0, 392.0, 69.0, 22.0 ],
                    "text": "0.00795"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 240.0, 361.0, 69.0, 22.0 ],
                    "text": "0.000666"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 175.0, 334.0, 69.0, 22.0 ],
                    "text": "0.00054"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 107.0, 310.0, 72.0, 22.0 ],
                    "text": "0.072623"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 279.0, 68.5, 22.0 ],
                    "text": "0.000881"
                }
            },
            {
                "box": {
                    "id": "obj-366",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 12,
                    "numoutlets": 12,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 30.0, 192.0, 735.0, 35.0 ],
                    "text": "route /face/present /face/jawOpen /face/browInnerUp /face/mouthSmileLeft /face/mouthSmileRight /face/mouthPucker /face/eyeBlinkLeft /face/eyeBlinkRight /face/mouthLowerDownLeft /face/mouthLowerDownRight /face/mouthFunnel"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 16.0, 249.0, 33.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 108.0, 71.0, 97.0, 22.0 ],
                    "text": "udpreceive 8000"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-127", 6 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 5 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 4 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 3 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 2 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 1 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "midpoints": [ 1270.5, 916.421875, 1794.84375, 906.67578125 ],
                    "order": 0,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 1270.5, 907.5625, 1705.5, 907.5625 ],
                    "order": 1,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "midpoints": [ 1270.5, 911.015625, 1618.5, 911.015625 ],
                    "order": 2,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "midpoints": [ 1270.5, 909.1015625, 1531.5, 909.1015625 ],
                    "order": 3,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "midpoints": [ 1270.5, 908.60546875, 1444.5, 908.60546875 ],
                    "order": 4,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "midpoints": [ 1270.5, 912.78515625, 1357.5, 912.78515625 ],
                    "order": 5,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "order": 6,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 1 ],
                    "midpoints": [ 1270.5, 1069.52734375, 1736.5, 1069.52734375 ],
                    "order": 0,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "order": 1,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 1491.5, 1688.34375, 878.51953125, 1688.34375, 883.53125, 1731.9140625, 864.0078125, 1748.28125, 745.5, 1748.28125 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 1623.5, 1696.6015625, 889.125, 1696.6015625, 889.125, 1751.79296875, 745.5, 1751.79296875 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "midpoints": [ 1676.01953125, 1540.99609375 ],
                    "order": 0,
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "order": 1,
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-140", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 834.5, 658.62890625, 818.90625, 658.62890625, 818.90625, 585.96484375, 834.5, 585.96484375 ],
                    "order": 1,
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 834.5, 658.203125, 1219.6171875, 658.203125, 1219.6171875, 574.76953125, 1021.5, 574.76953125 ],
                    "order": 0,
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 834.5, 703.96875, 812.84375, 703.96875, 812.84375, 581.328125, 834.5, 581.328125 ],
                    "order": 1,
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 834.5, 698.2421875, 1211.71484375, 698.2421875, 1211.71484375, 576.62109375, 1021.5, 576.62109375 ],
                    "order": 0,
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 0 ],
                    "midpoints": [ 293.5, 1035.359375, 413.4545454545455, 1035.359375 ],
                    "order": 0,
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-167", 1 ],
                    "order": 1,
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 1 ],
                    "source": [ "obj-148", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "midpoints": [ 522.01953125, 1563.99609375 ],
                    "order": 0,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "order": 1,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 78.5, 882.6484375, 293.5, 882.6484375 ],
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 1 ],
                    "midpoints": [ 413.4545454545455, 1149.1171875, 206.5, 1149.1171875 ],
                    "order": 1,
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-177", 0 ],
                    "midpoints": [ 413.4545454545455, 1147.5078125, 291.0, 1147.5078125 ],
                    "order": 0,
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "midpoints": [ 1548.15625, 1525.40234375 ],
                    "order": 0,
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "order": 1,
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 834.5, 739.6328125, 810.70703125, 739.6328125, 810.70703125, 585.67578125, 834.5, 585.67578125 ],
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "source": [ "obj-165", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 293.97727272727275, 811.43359375, 274.66796875, 811.43359375, 274.66796875, 859.05859375, 293.5, 859.05859375 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-153", 0 ],
                    "midpoints": [ 78.5, 758.5390625, 78.5, 758.5390625 ],
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "midpoints": [ 140.0, 760.5, 62.71875, 760.5, 62.71875, 719.4609375, 78.5, 719.4609375 ],
                    "source": [ "obj-175", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-180", 0 ],
                    "source": [ "obj-179", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "midpoints": [ 1646.5, 1382.96484375, 1623.5, 1382.96484375 ],
                    "source": [ "obj-180", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "midpoints": [ 970.5, 1323.29296875, 818.0078125, 1323.29296875, 818.0078125, 1497.49609375, 493.84375, 1497.49609375, 493.84375, 1399.48046875, 465.5, 1399.48046875 ],
                    "source": [ "obj-180", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "midpoints": [ 1533.8333333333335, 1368.2578125, 1491.0234375, 1368.2578125, 1491.5, 1385.125 ],
                    "source": [ "obj-180", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 1083.1666666666667, 1352.20703125, 928.5, 1352.20703125 ],
                    "source": [ "obj-180", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "midpoints": [ 1195.8333333333333, 1376.96484375, 1059.5, 1376.96484375 ],
                    "source": [ "obj-180", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "midpoints": [ 1308.5, 1382.59765625, 1210.5, 1382.59765625 ],
                    "source": [ "obj-180", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1421.1666666666667, 1396.24609375, 1353.5, 1396.24609375 ],
                    "source": [ "obj-180", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 293.5, 767.390625, 293.5, 772.59375, 268.55859375, 772.59375, 268.55859375, 775.03125, 268.55859375, 857.3671875, 293.5, 857.3671875 ],
                    "source": [ "obj-184", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-188", 0 ],
                    "source": [ "obj-186", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-366", 0 ],
                    "source": [ "obj-188", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-188", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 1 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-20", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 683.5, 1623.70703125, 602.84375, 1623.70703125, 602.84375, 1772.46484375, 465.5, 1772.46484375 ],
                    "order": 1,
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 683.5, 1624.2109375, 840.52734375, 1624.2109375, 840.52734375, 1761.4921875, 745.5, 1761.4921875 ],
                    "order": 0,
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 383.5, 1787.234375 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 365.80859375, 1725.046875, 365.80859375, 1784.97265625, 465.5, 1784.97265625 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 355.91796875, 1693.74609375, 355.91796875, 1787.81640625, 465.5, 1787.81640625 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 1 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 1 ],
                    "order": 0,
                    "source": [ "obj-366", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "order": 1,
                    "source": [ "obj-366", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-366", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "source": [ "obj-366", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "source": [ "obj-366", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "source": [ "obj-366", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 1 ],
                    "source": [ "obj-366", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 3 ],
                    "order": 0,
                    "source": [ "obj-366", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 2 ],
                    "midpoints": [ 299.8636363636364, 522.9296875, 277.1363636363636, 522.9296875 ],
                    "order": 1,
                    "source": [ "obj-366", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 1 ],
                    "midpoints": [ 234.77272727272728, 377.5703125, 189.3181818181818, 377.5703125 ],
                    "order": 1,
                    "source": [ "obj-366", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "order": 1,
                    "source": [ "obj-366", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-366", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "order": 0,
                    "source": [ "obj-366", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 1 ],
                    "source": [ "obj-366", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "order": 0,
                    "source": [ "obj-366", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "midpoints": [ 977.01953125, 1540.99609375 ],
                    "order": 0,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "order": 1,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "order": 1,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "midpoints": [ 101.5, 594.65625, 373.37109375, 594.65625, 373.37109375, 641.875, 499.9609375, 641.875, 499.9609375, 541.16796875, 451.5, 541.16796875 ],
                    "order": 0,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 1 ],
                    "midpoints": [ 101.5, 694.97265625, 91.5, 694.97265625 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 924.5, 1646.921875, 847.171875, 1646.921875, 841.62109375, 1646.921875, 841.62109375, 1726.58203125, 841.62109375, 1733.28515625, 745.5, 1733.28515625 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 1015.0, 744.375, 1205.0, 744.375, 1205.0, 584.6953125, 1021.5, 584.6953125 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "midpoints": [ 834.5, 532.69140625, 1021.5, 532.69140625 ],
                    "order": 0,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 1059.5, 1671.953125, 852.80859375, 1671.953125, 852.80859375, 1741.15234375, 757.97265625, 1741.15234375, 745.5, 1741.15234375 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-61", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 1 ],
                    "source": [ "obj-61", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 726.00390625, 1662.25, 726.00390625, 1735.41015625, 745.5, 1735.41015625 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-64", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 1112.01953125, 1540.99609375 ],
                    "order": 0,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "order": 1,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 733.5546875, 1693.94921875, 733.5546875, 1731.26171875, 745.5, 1731.26171875 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 1210.5, 1681.01171875, 864.74609375, 1686.26171875, 864.74609375, 1744.96875, 746.08203125, 1744.96875, 745.5, 1786.453125 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "midpoints": [ 1263.01953125, 1540.99609375 ],
                    "order": 0,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "order": 1,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 1353.5, 1685.45703125, 873.40234375, 1685.45703125, 873.40234375, 1746.55859375, 745.5, 1746.55859375 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 1 ],
                    "source": [ "obj-82", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 1406.01953125, 1540.99609375 ],
                    "order": 0,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "order": 1,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-148": [ "live.gain~[3]", "live.gain~[1]", 0 ],
            "obj-20": [ "vst~", "vst~", 0 ],
            "obj-61": [ "vst~[3]", "vst~[3]", 0 ],
            "obj-82": [ "live.gain~[2]", "live.gain~[1]", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}