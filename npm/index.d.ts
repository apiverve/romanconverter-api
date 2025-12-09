declare module '@apiverve/romanconverter' {
  export interface romanconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface romanconverterResponse {
    status: string;
    error: string | null;
    data: RomanNumeralConverterData;
    code?: number;
  }


  interface RomanNumeralConverterData {
      number:    number;
      roman:     string;
      breakdown: Breakdown;
  }
  
  interface Breakdown {
      m:  number;
      x:  number;
      iv: number;
  }

  export default class romanconverterWrapper {
    constructor(options: romanconverterOptions);

    execute(callback: (error: any, data: romanconverterResponse | null) => void): Promise<romanconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: romanconverterResponse | null) => void): Promise<romanconverterResponse>;
    execute(query?: Record<string, any>): Promise<romanconverterResponse>;
  }
}
