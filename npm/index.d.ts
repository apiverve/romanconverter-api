declare module '@apiverve/romanconverter' {
  export interface romanconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface romanconverterResponse {
    status: string;
    error: string | null;
    data: RomanNumeralConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface RomanNumeralConverterData {
      number:    number | null;
      roman:     null | string;
      breakdown: Breakdown;
  }
  
  interface Breakdown {
      m:  number | null;
      x:  number | null;
      iv: number | null;
  }

  export default class romanconverterWrapper {
    constructor(options: romanconverterOptions);

    execute(callback: (error: any, data: romanconverterResponse | null) => void): Promise<romanconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: romanconverterResponse | null) => void): Promise<romanconverterResponse>;
    execute(query?: Record<string, any>): Promise<romanconverterResponse>;
  }
}
