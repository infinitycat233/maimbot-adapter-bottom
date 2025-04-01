FROM nonebot/nb-cli:latest
LABEL authors="infinitycat233"

WORKDIR /adapters

RUN pip install nonebot-adapter-onebot nonebot2[fastapi] nonebot2[websockets]

COPY . .

ENTRYPOINT ["nb", "run", "--reload"]