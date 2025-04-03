FROM nonebot/nb-cli:latest
LABEL authors="infinitycat233"

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /adapters

RUN uv pip install --system --upgrade pip
RUN pip install --system nonebot-adapter-onebot nonebot2[fastapi] nonebot2[websockets]

COPY . .

ENTRYPOINT ["nb", "run", "--reload"]