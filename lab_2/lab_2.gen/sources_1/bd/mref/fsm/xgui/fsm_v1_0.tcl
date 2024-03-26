# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IDEL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INT_OFF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OFF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OFF_1V2_INT_2V5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ON_1V2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ON_2V5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ON_3V3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TRG_OFF" -parent ${Page_0}


}

proc update_PARAM_VALUE.IDEL { PARAM_VALUE.IDEL } {
	# Procedure called to update IDEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDEL { PARAM_VALUE.IDEL } {
	# Procedure called to validate IDEL
	return true
}

proc update_PARAM_VALUE.INT_OFF { PARAM_VALUE.INT_OFF } {
	# Procedure called to update INT_OFF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INT_OFF { PARAM_VALUE.INT_OFF } {
	# Procedure called to validate INT_OFF
	return true
}

proc update_PARAM_VALUE.OFF { PARAM_VALUE.OFF } {
	# Procedure called to update OFF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OFF { PARAM_VALUE.OFF } {
	# Procedure called to validate OFF
	return true
}

proc update_PARAM_VALUE.OFF_1V2_INT_2V5 { PARAM_VALUE.OFF_1V2_INT_2V5 } {
	# Procedure called to update OFF_1V2_INT_2V5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OFF_1V2_INT_2V5 { PARAM_VALUE.OFF_1V2_INT_2V5 } {
	# Procedure called to validate OFF_1V2_INT_2V5
	return true
}

proc update_PARAM_VALUE.ON_1V2 { PARAM_VALUE.ON_1V2 } {
	# Procedure called to update ON_1V2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ON_1V2 { PARAM_VALUE.ON_1V2 } {
	# Procedure called to validate ON_1V2
	return true
}

proc update_PARAM_VALUE.ON_2V5 { PARAM_VALUE.ON_2V5 } {
	# Procedure called to update ON_2V5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ON_2V5 { PARAM_VALUE.ON_2V5 } {
	# Procedure called to validate ON_2V5
	return true
}

proc update_PARAM_VALUE.ON_3V3 { PARAM_VALUE.ON_3V3 } {
	# Procedure called to update ON_3V3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ON_3V3 { PARAM_VALUE.ON_3V3 } {
	# Procedure called to validate ON_3V3
	return true
}

proc update_PARAM_VALUE.TRG_OFF { PARAM_VALUE.TRG_OFF } {
	# Procedure called to update TRG_OFF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TRG_OFF { PARAM_VALUE.TRG_OFF } {
	# Procedure called to validate TRG_OFF
	return true
}


proc update_MODELPARAM_VALUE.IDEL { MODELPARAM_VALUE.IDEL PARAM_VALUE.IDEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDEL}] ${MODELPARAM_VALUE.IDEL}
}

proc update_MODELPARAM_VALUE.ON_3V3 { MODELPARAM_VALUE.ON_3V3 PARAM_VALUE.ON_3V3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ON_3V3}] ${MODELPARAM_VALUE.ON_3V3}
}

proc update_MODELPARAM_VALUE.ON_2V5 { MODELPARAM_VALUE.ON_2V5 PARAM_VALUE.ON_2V5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ON_2V5}] ${MODELPARAM_VALUE.ON_2V5}
}

proc update_MODELPARAM_VALUE.ON_1V2 { MODELPARAM_VALUE.ON_1V2 PARAM_VALUE.ON_1V2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ON_1V2}] ${MODELPARAM_VALUE.ON_1V2}
}

proc update_MODELPARAM_VALUE.TRG_OFF { MODELPARAM_VALUE.TRG_OFF PARAM_VALUE.TRG_OFF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TRG_OFF}] ${MODELPARAM_VALUE.TRG_OFF}
}

proc update_MODELPARAM_VALUE.INT_OFF { MODELPARAM_VALUE.INT_OFF PARAM_VALUE.INT_OFF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INT_OFF}] ${MODELPARAM_VALUE.INT_OFF}
}

proc update_MODELPARAM_VALUE.OFF_1V2_INT_2V5 { MODELPARAM_VALUE.OFF_1V2_INT_2V5 PARAM_VALUE.OFF_1V2_INT_2V5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OFF_1V2_INT_2V5}] ${MODELPARAM_VALUE.OFF_1V2_INT_2V5}
}

proc update_MODELPARAM_VALUE.OFF { MODELPARAM_VALUE.OFF PARAM_VALUE.OFF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OFF}] ${MODELPARAM_VALUE.OFF}
}

