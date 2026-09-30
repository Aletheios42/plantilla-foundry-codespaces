# EntreTodos

Entorno de desarrollo: Foundry (`forge`, `cast`, `anvil`), opencode, Node 20, Vite, ethers v6. Se ejecuta en GitHub Codespaces.

## Configuración

1. **Obtén tu copia**: haz clic en **Use this template** → **Create a new repository**.
2. **Añade los secretos**: GitHub → Settings → Codespaces → **New secret**, con acceso a tu repositorio:
* `SEPOLIA_RPC_URL`: tu URL de Sepolia en Alchemy
* `PRIVATE_KEY`: la clave de una cartera desechable / de pruebas (*burner wallet*, nunca uses una real)


3. **Iniciar**: en tu repositorio, ve a **Code** → **Codespaces** → **Create codespace on main**. Espera a que termine la configuración (finaliza con `forge test`).

## Uso

```bash
# Contratos
cd contracts
forge build
forge test
forge create src/Counter.sol:Counter --rpc-url sepolia --private-key $PRIVATE_KEY --broadcast

# Frontend (puerto 5173)
cd frontend
npm run dev

# Agente de IA
Copilot de codespace
```

## Estructura

```
.devcontainer/   definición del entorno
contracts/       proyecto Foundry
frontend/        Vite + vanilla JS + ethers
.env.example     variables requeridas

```

## Solución de problemas

* La configuración falló: Paleta de comandos (Command Palette) → `Codespaces: View Creation Log`.
* ETH de prueba: utiliza cualquier faucet de Sepolia con tu dirección desechable.
