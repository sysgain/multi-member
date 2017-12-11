# Params for mainTemplate.json
echo "Loading param sets for canary validation of Azure Marketplace template"

# Plese define the following variables in your personal automated-validation script
$location       = "";
$baseUrl        = "";
$authType       = "";
$vmAdminPasswd  = "";
$ethPasswd      = "";
$passphrase     = "";
$sshPublicKey   = "";

# Some overridable defaults
if ([string]::IsNullOrEmpty($location))
{ $location = "centralus"; }

if (!$networkID)
{ $networkID = 10101010; }

if ([string]::IsNullOrEmpty($authType))
{ $authType = "password"; }

$paramSet = @{
  "set1" = @{
    "namePrefix"                = "eth";
    "mode"                      = "Leader";
    "regionCount"               = 4;
    "location_1"                = "westus";
    "location_2"                = "eastus";
    "location_3"                = "centralus";
    "location_4"                = "eastus2";
    "location_5"                = "westus2";
    "authType"                  = $authType;
    "adminUsername"             = "gethadmin";
    "adminPassword"             = $vmAdminPasswd;
    "adminSSHKey"               = $sshPublicKey;
    "ethereumAccountPsswd"      = $ethPasswd;
    "ethereumAccountPassphrase" = $passphrase;
    "ethereumNetworkID"         = $networkID;
    "consortiumMemberId"        = 19;
    "numMiningNodesRegion"      = 2;
    "mnNodeVMSize"              = "Standard_D1";
    "mnStorageAccountType"      = "Standard_LRS";
    "numTXNodesRegion"          = 2;
    "txNodeVMSize"              = "Standard_D1";
    "txStorageAccountType"      = "Standard_LRS";
    "baseUrl"                   = $baseUrl;
    "consortiumMemberGatewayId" = "";
    "consortiumDataURL"         = ""
    "connectionSharedKey"       = "Ashpassword123";
    "peerInfoEndpoint"          = "";
    "peerInfoPrimaryKey"        = ""
    "genesisBlock"              = "";
  };

    "set2" = @{
    "namePrefix"                = "eth";
    "mode"                      = "Single";
    "regionCount"               = 2;
    "location_1"                = "westus";
    "location_2"                = "eastus";
    "location_3"                = "centralus";
    "location_4"                = "eastus2";
    "location_5"                = "westus2";
    "authType"                  = $authType;
    "adminUsername"             = "gethadmin";
    "adminPassword"             = $vmAdminPasswd;
    "adminSSHKey"               = $sshPublicKey;
    "ethereumAccountPsswd"      = $ethPasswd;
    "ethereumAccountPassphrase" = $passphrase;
    "ethereumNetworkID"         = $networkID;
    "consortiumMemberId"        = 7;
    "numMiningNodesRegion"      = 2;
    "mnNodeVMSize"              = "Standard_D1";
    "mnStorageAccountType"      = "Standard_LRS";
    "numTXNodesRegion"          = 1;
    "txNodeVMSize"              = "Standard_D1";
    "txStorageAccountType"      = "Standard_LRS";
    "baseUrl"                   = $baseUrl;
    "consortiumMemberGatewayId" = "";
    "consortiumDataURL"         = ""
    "connectionSharedKey"       = "Ashpassword123";
    "peerInfoEndpoint"          = "";
    "peerInfoPrimaryKey"        = ""
    "genesisBlock"              = "";
  };
    
}; 
