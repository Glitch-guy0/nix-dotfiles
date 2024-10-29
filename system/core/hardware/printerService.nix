{ config, lib, ...}:
{

  options = {
    printerService.enable = lib.mkEnableOption {
      default = false;
      description = "enable all printing Services";
    };
  };

  config = lib.mkIf config.printerService.enable {
    # Enable CUPS to print documents.
    services.printing.enable = true;
  }; 

}
