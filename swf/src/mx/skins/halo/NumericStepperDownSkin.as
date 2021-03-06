﻿package mx.skins.halo {
    import flash.display.*;
    import mx.styles.*;
    import mx.utils.*;
    import mx.skins.*;

    public class NumericStepperDownSkin extends Border {

        mx_internal static const VERSION:String = "3.2.0.3958";

        private static var cache:Object = {};

        private static function calcDerivedStyles(_arg1:uint, _arg2:uint, _arg3:uint, _arg4:uint):Object{
            var _local6:Object;
            var _local5:String = HaloColors.getCacheKey(_arg1, _arg2, _arg3, _arg4);
            if (!cache[_local5]){
                _local6 = (cache[_local5] = {});
                HaloColors.addHaloColors(_local6, _arg1, _arg3, _arg4);
                _local6.borderColorDrk1 = ColorUtil.adjustBrightness2(_arg2, -50);
                _local6.borderColorDrk2 = ColorUtil.adjustBrightness2(_arg2, -25);
            };
            return (cache[_local5]);
        }

        override public function get measuredWidth():Number{
            return (19);
        }
        override public function get measuredHeight():Number{
            return (11);
        }
        override protected function updateDisplayList(_arg1:Number, _arg2:Number):void{
            var _local13:Array;
            var _local14:Array;
            var _local15:Array;
            var _local16:Array;
            var _local17:Array;
            var _local18:Array;
            super.updateDisplayList(_arg1, _arg2);
            var _local3:uint = getStyle("iconColor");
            var _local4:uint = getStyle("borderColor");
            var _local5:Number = getStyle("cornerRadius");
            var _local6:Array = getStyle("fillAlphas");
            var _local7:Array = getStyle("fillColors");
            StyleManager.getColorNames(_local7);
            var _local8:uint = getStyle("themeColor");
            var _local9:Object = calcDerivedStyles(_local8, _local4, _local7[0], _local7[1]);
            var _local10:Object = {
                tl:0,
                tr:0,
                bl:0,
                br:_local5
            };
            var _local11:Object = {
                tl:0,
                tr:0,
                bl:0,
                br:Math.max((_local5 - 1), 0)
            };
            var _local12:Graphics = graphics;
            _local12.clear();
            switch (name){
                case "downArrowUpSkin":
                    _local13 = [_local7[0], _local7[1]];
                    _local14 = [_local6[0], _local6[1]];
                    drawRoundRect(0, 0, _arg1, _arg2, _local10, [_local9.borderColorDrk2, _local9.borderColorDrk1], 1, verticalGradientMatrix(0, 0, _arg1, _arg2), GradientType.LINEAR, null, {
                        x:1,
                        y:0,
                        w:(_arg1 - 2),
                        h:(_arg2 - 1),
                        r:_local11
                    });
                    drawRoundRect(1, 0, (_arg1 - 2), (_arg2 - 1), _local11, _local13, _local14, verticalGradientMatrix(1, (1 - _arg2), (_arg1 - 2), ((2 * _arg2) - 2)));
                    break;
                case "downArrowOverSkin":
                    if (_local7.length > 2){
                        _local15 = [_local7[2], _local7[3]];
                    } else {
                        _local15 = [_local7[0], _local7[1]];
                    };
                    if (_local6.length > 2){
                        _local16 = [_local6[2], _local6[3]];
                    } else {
                        _local16 = [_local6[0], _local6[1]];
                    };
                    drawRoundRect(0, 0, _arg1, _arg2, _local10, [_local9.themeColDrk2, _local9.themeColDrk1], 1, verticalGradientMatrix(0, 0, _arg1, _arg2), GradientType.LINEAR, null, {
                        x:1,
                        y:0,
                        w:(_arg1 - 2),
                        h:(_arg2 - 1),
                        r:_local11
                    });
                    drawRoundRect(1, 0, (_arg1 - 2), (_arg2 - 1), _local11, _local15, _local16, verticalGradientMatrix(1, (1 - _arg2), (_arg1 - 2), ((2 * _arg2) - 2)));
                    break;
                case "downArrowDownSkin":
                    drawRoundRect(0, 0, _arg1, _arg2, _local10, [_local9.themeColDrk2, _local9.themeColDrk1], 1, verticalGradientMatrix(0, 0, _arg1, _arg2));
                    drawRoundRect(1, 0, (_arg1 - 2), (_arg2 - 1), _local11, [_local9.fillColorPress1, _local9.fillColorPress2], 1, verticalGradientMatrix(1, (1 - _arg2), (_arg1 - 2), ((2 * _arg2) - 2)));
                    break;
                case "downArrowDisabledSkin":
                    _local17 = [_local7[0], _local7[1]];
                    _local18 = [Math.max(0, (_local6[0] - 0.15)), Math.max(0, (_local6[1] - 0.15))];
                    drawRoundRect(0, 0, _arg1, _arg2, _local10, [_local9.borderColorDrk2, _local9.borderColorDrk1], 0.5, verticalGradientMatrix(0, 0, _arg1, _arg2), GradientType.LINEAR, null, {
                        x:1,
                        y:0,
                        w:(_arg1 - 2),
                        h:(_arg2 - 1),
                        r:_local11
                    });
                    drawRoundRect(1, 0, (_arg1 - 2), (_arg2 - 1), _local11, _local17, _local18, verticalGradientMatrix(1, (1 - _arg2), (_arg1 - 2), ((2 * _arg2) - 2)));
                    _local3 = getStyle("disabledIconColor");
                    break;
            };
            _local12.beginFill(_local3);
            _local12.moveTo((_arg1 / 2), ((_arg2 / 2) + 1.5));
            _local12.lineTo(((_arg1 / 2) - 3.5), ((_arg2 / 2) - 2.5));
            _local12.lineTo(((_arg1 / 2) + 3.5), ((_arg2 / 2) - 2.5));
            _local12.lineTo((_arg1 / 2), ((_arg2 / 2) + 1.5));
            _local12.endFill();
        }

    }
}//package mx.skins.halo 
