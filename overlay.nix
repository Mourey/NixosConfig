self: super: {
  rust-analyzer-config = super.rust-analyzer-config.overrideAttrs (oldAttrs: rec {
    nixOptions = {
      # Define the options as an attribute set
      option1 = "value1";
      option2 = "value2";
    };
    nestedNixOptions = super.lib.attrsets.mapAttrsToList (name: value: { inherit name value; }) nixOptions;
  });
}
