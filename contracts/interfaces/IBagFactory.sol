// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

/* 
    !!!         !!!         !!!    
    !!!         !!!         !!!    
    !!!         !!!         !!!    
    !!!         !!!         !!!    
    !!!         !!!         !!!    
    !!!         !!!         !!!    

    BAG         BAG         BAG    
*/
interface IBagFactory {
    /// @notice Emitted when a new Bag token is created
    /// @param factoryAddress The address of the factory that created the token
    /// @param tokenCreator The address of the creator of the token
    /// @param platformReferrer The address of the platform referrer
    /// @param protocolFeeRecipient The address of the protocol fee recipient
    /// @param bondingCurve The address of the bonding curve
    /// @param tokenURI The URI of the token
    /// @param name The name of the token
    /// @param symbol The symbol of the token
    /// @param tokenAddress The address of the token
    /// @param poolAddress The address of the pool
    event BagTokenCreated(
        address indexed factoryAddress,
        address indexed tokenCreator,
        address platformReferrer,
        address protocolFeeRecipient,
        address bondingCurve,
        string tokenURI,
        string name,
        string symbol,
        address tokenAddress,
        address poolAddress
    );

    /// @notice Deploys a Bag ERC20 token
    /// @param _tokenCreator The address of the token creator
    /// @param _platformReferrer The address of the platform referrer
    /// @param _tokenURI The ERC20z token URI
    /// @param _name The ERC20 token name
    /// @param _symbol The ERC20 token symbol
    function deploy(
        address _tokenCreator,
        address _platformReferrer,
        string memory _tokenURI,
        string memory _name,
        string memory _symbol
    ) external payable returns (address);
}