.class public final enum Lcom/vk/media/render/RenderBase$RenderingState;
.super Ljava/lang/Enum;
.source "RenderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/media/render/RenderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/media/render/RenderBase$RenderingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/media/render/RenderBase$RenderingState;

.field public static final enum PAUSE:Lcom/vk/media/render/RenderBase$RenderingState;

.field public static final enum START:Lcom/vk/media/render/RenderBase$RenderingState;

.field public static final enum STOP:Lcom/vk/media/render/RenderBase$RenderingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/vk/media/render/RenderBase$RenderingState;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/media/render/RenderBase$RenderingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/media/render/RenderBase$RenderingState;->STOP:Lcom/vk/media/render/RenderBase$RenderingState;

    .line 23
    new-instance v0, Lcom/vk/media/render/RenderBase$RenderingState;

    const-string v1, "PAUSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vk/media/render/RenderBase$RenderingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/media/render/RenderBase$RenderingState;->PAUSE:Lcom/vk/media/render/RenderBase$RenderingState;

    .line 24
    new-instance v0, Lcom/vk/media/render/RenderBase$RenderingState;

    const-string v1, "START"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vk/media/render/RenderBase$RenderingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/media/render/RenderBase$RenderingState;->START:Lcom/vk/media/render/RenderBase$RenderingState;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lcom/vk/media/render/RenderBase$RenderingState;

    sget-object v1, Lcom/vk/media/render/RenderBase$RenderingState;->STOP:Lcom/vk/media/render/RenderBase$RenderingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/media/render/RenderBase$RenderingState;->PAUSE:Lcom/vk/media/render/RenderBase$RenderingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vk/media/render/RenderBase$RenderingState;->START:Lcom/vk/media/render/RenderBase$RenderingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vk/media/render/RenderBase$RenderingState;->$VALUES:[Lcom/vk/media/render/RenderBase$RenderingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/media/render/RenderBase$RenderingState;
    .locals 1

    .line 21
    const-class v0, Lcom/vk/media/render/RenderBase$RenderingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/media/render/RenderBase$RenderingState;

    return-object p0
.end method

.method public static values()[Lcom/vk/media/render/RenderBase$RenderingState;
    .locals 1

    .line 21
    sget-object v0, Lcom/vk/media/render/RenderBase$RenderingState;->$VALUES:[Lcom/vk/media/render/RenderBase$RenderingState;

    invoke-virtual {v0}, [Lcom/vk/media/render/RenderBase$RenderingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/media/render/RenderBase$RenderingState;

    return-object v0
.end method
