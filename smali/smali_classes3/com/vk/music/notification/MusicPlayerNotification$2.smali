.class final Lcom/vk/music/notification/MusicPlayerNotification$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MusicPlayerNotification.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/music/notification/MusicPlayerNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat;Lcom/vk/dto/music/MusicTrack;ZZLcom/vk/music/l/ModernMusicTrackModel;Lcom/vk/music/n/IntentPlayerHelper;Lkotlin/jvm/b/Functions2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions2<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $afterCreation:Lkotlin/jvm/b/Functions2;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isContentMode:Z

.field final synthetic $isPlaying:Z

.field final synthetic $mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field final synthetic $musicTrackModel:Lcom/vk/music/l/ModernMusicTrackModel;

.field final synthetic $track:Lcom/vk/dto/music/MusicTrack;

.field final synthetic this$0:Lcom/vk/music/notification/MusicPlayerNotification;


# direct methods
.method constructor <init>(Lcom/vk/music/notification/MusicPlayerNotification;Lcom/vk/dto/music/MusicTrack;Landroid/content/Context;Lkotlin/jvm/b/Functions2;Landroid/support/v4/media/session/MediaSessionCompat;ZZLcom/vk/music/l/ModernMusicTrackModel;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->this$0:Lcom/vk/music/notification/MusicPlayerNotification;

    iput-object p2, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$track:Lcom/vk/dto/music/MusicTrack;

    iput-object p3, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$afterCreation:Lkotlin/jvm/b/Functions2;

    iput-object p5, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iput-boolean p6, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$isContentMode:Z

    iput-boolean p7, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$isPlaying:Z

    iput-object p8, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$musicTrackModel:Lcom/vk/music/l/ModernMusicTrackModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 9

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->this$0:Lcom/vk/music/notification/MusicPlayerNotification;

    iget-object v0, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$track:Lcom/vk/dto/music/MusicTrack;

    invoke-static {p1, v0}, Lcom/vk/music/notification/MusicPlayerNotification;->a(Lcom/vk/music/notification/MusicPlayerNotification;Lcom/vk/dto/music/MusicTrack;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$context:Landroid/content/Context;



    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1



    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/vk/music/notification/MusicPlayerNotification$2$1;

    invoke-direct {v2, p0}, Lcom/vk/music/notification/MusicPlayerNotification$2$1;-><init>(Lcom/vk/music/notification/MusicPlayerNotification$2;)V

    invoke-static {p1, v0, v1, v2}, Lcom/vk/music/notification/MusicPlayerNotification;->a(Lcom/vk/music/notification/MusicPlayerNotification;ILandroid/content/res/Resources;Lkotlin/jvm/b/Functions2;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->this$0:Lcom/vk/music/notification/MusicPlayerNotification;

    invoke-static {v0}, Lcom/vk/music/notification/MusicPlayerNotification;->a(Lcom/vk/music/notification/MusicPlayerNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$afterCreation:Lkotlin/jvm/b/Functions2;

    iget-object v1, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->this$0:Lcom/vk/music/notification/MusicPlayerNotification;

    iget-object v2, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-boolean v4, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$isContentMode:Z

    xor-int/lit8 v5, v4, 0x1

    iget-boolean v6, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$isPlaying:Z

    iget-object v7, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$musicTrackModel:Lcom/vk/music/l/ModernMusicTrackModel;

    iget-object v8, p0, Lcom/vk/music/notification/MusicPlayerNotification$2;->$track:Lcom/vk/dto/music/MusicTrack;

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Lcom/vk/music/notification/MusicPlayerNotification;->a(Lcom/vk/music/notification/MusicPlayerNotification;Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;Landroid/graphics/Bitmap;ZZLcom/vk/music/l/ModernMusicTrackModel;Lcom/vk/dto/music/MusicTrack;)Landroid/app/Notification;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vk/music/notification/MusicPlayerNotification$2;->a(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
