{
    _allTime = time - (_x getVariable ["grad_prix_time",0]);
    _seconds = floor (_allTime);
    if (_allTime > 60) then {
        _count = floor (_allTime / 60);
        _seconds = floor (_allTime - (60*_count));
    };
    _hour = 0;
    _min = floor (_allTime / 60);
    if (_min > 60) then {
        _hour = floor (_min / 60);
        _min = floor (_min - (60*_hour));
    };
    diag_log format ["Player: %1, Time: %1, %2, %3" _x, _hour, _min, _seconds];
    _text = format ["Congratulations. You took %1h %2m %3s to get here!", _hour, _min, _seconds];
    _text remoteExec ["hint", _x, false];
}forEach _this;
