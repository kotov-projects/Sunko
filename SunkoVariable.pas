﻿namespace Sunko;

type
  SunkoVariable = class
    private fValue: object;
    private fNestedLevel: integer;
    private fSunkoType: string;
    
    private fArray: array of object;
    private function fIsArray := fValue.GetType.IsArray;
    
    public property Value: object read fValue write fValue;
    public property NestedLevel: integer read fNestedLevel write fNestedLevel;
    public property SunkoType: string read fSunkoType;
    public property IsArray: boolean read fIsArray;
    
    public constructor(val: object; typ: string; nlev: integer);
    begin
      fValue := val;
      fSunkoType := typ;
      fNestedLevel := nlev;
    end;
    
    public function ToString: string; override;
    begin
      Result := $'({fSunkoType}, {fValue}, {fNestedLevel})';
    end;
  end;

end.