.class public Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;
.super Lcom/vk/newsfeed/holders/zhukov/BaseHolder;
.source "PhotoHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/newsfeed/holders/zhukov/PhotoHolder$a;
    }
.end annotation


# static fields
.field public static final B:Lcom/vk/newsfeed/holders/zhukov/PhotoHolder$a;


# instance fields
.field private final e:Lcom/vk/newsfeed/FrescoImageView;

.field private final f:Landroid/view/View;

.field private g:Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces;

.field private final h:Lcom/vk/newsfeed/holders/zhukov/PostingHolders1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->B:Lcom/vk/newsfeed/holders/zhukov/PhotoHolder$a;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;IZ)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/vk/newsfeed/holders/zhukov/BaseHolder;-><init>(Landroid/view/View;I)V

    .line 3
    iget-object p2, p0, Lcom/vk/im/ui/views/image_zhukov/ZhukovViewHolder;->a:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f0a057f

    invoke-static {p2, v3, v2, v1, v2}, Lcom/vk/extensions/ViewExtKt;->a(Landroid/view/View;ILkotlin/jvm/b/Functions2;ILjava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/vk/newsfeed/FrescoImageView;

    iput-object p2, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->e:Lcom/vk/newsfeed/FrescoImageView;

    .line 4
    iget-object p2, p0, Lcom/vk/im/ui/views/image_zhukov/ZhukovViewHolder;->a:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0101

    invoke-static {p2, v0, v2, v1, v2}, Lcom/vk/extensions/ViewExtKt;->a(Landroid/view/View;ILkotlin/jvm/b/Functions2;ILjava/lang/Object;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->f:Landroid/view/View;

    .line 5
    new-instance p2, Lcom/vk/newsfeed/holders/zhukov/PostingHolders1;

    new-instance v0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder$b;

    invoke-direct {v0, p0}, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder$b;-><init>(Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;)V

    invoke-direct {p2, p1, v0}, Lcom/vk/newsfeed/holders/zhukov/PostingHolders1;-><init>(Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->h:Lcom/vk/newsfeed/holders/zhukov/PostingHolders1;

    .line 6
    iget-object p1, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->e:Lcom/vk/newsfeed/FrescoImageView;

    sget-object p2, Lcom/vk/core/util/measure/ScaleType;->CENTER_CROP:Lcom/vk/core/util/measure/ScaleType;

    invoke-virtual {p1, p2}, Lcom/vk/newsfeed/FrescoImageView;->setScaleType(Lcom/vk/core/util/measure/ScaleType;)V

    .line 7
    iget-object p1, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->e:Lcom/vk/newsfeed/FrescoImageView;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0x7f04044d

    invoke-static {v0}, Lru/vtosters/lite/res/VTLColors;->getColor(I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/vk/newsfeed/FrescoImageView;->setPlaceholder(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->e:Lcom/vk/newsfeed/FrescoImageView;

    invoke-virtual {p1, p3}, Lcom/vk/newsfeed/FrescoImageView;->setWithImageDownscale(Z)V

    if-nez p3, :cond_0

    .line 9
    iget-object p1, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->e:Lcom/vk/newsfeed/FrescoImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/vk/newsfeed/FrescoImageView;->setFadeDuration(I)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/views/image_zhukov/ZhukovViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/FrameLayout;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;-><init>(Landroid/widget/FrameLayout;IZ)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces$a;->a(Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces3;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/vk/dto/common/Attachment;)V
    .locals 3

    .line 2
    instance-of v0, p1, Lcom/vtosters/lite/attachments/PhotoAttachment;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->e:Lcom/vk/newsfeed/FrescoImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/newsfeed/FrescoImageView;->setLocalImage(Lcom/vk/dto/common/ImageSize;)V

    .line 4
    iget-object v0, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->e:Lcom/vk/newsfeed/FrescoImageView;

    check-cast p1, Lcom/vtosters/lite/attachments/PhotoAttachment;

    iget-object v1, p1, Lcom/vtosters/lite/attachments/PhotoAttachment;->D:Lcom/vk/dto/photo/Photo;

    iget-object v1, v1, Lcom/vk/dto/photo/Photo;->Q:Lcom/vk/dto/common/Image;

    const-string v2, "item.photo.sizes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vk/dto/common/Image;->t1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/newsfeed/FrescoImageView;->setRemoteImage(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->a(Lcom/vtosters/lite/attachments/PhotoAttachment;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->g:Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces;

    return-void
.end method

.method protected final a(Lcom/vtosters/lite/attachments/PhotoAttachment;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/vtosters/lite/attachments/PhotoAttachment;->D:Lcom/vk/dto/photo/Photo;

    iget-boolean p1, p1, Lcom/vk/dto/photo/Photo;->I:Z

    invoke-static {v0, p1}, Lcom/vk/extensions/ViewExtKt;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method protected final b()Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->g:Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces;

    return-object v0
.end method

.method protected final c()Lcom/vk/newsfeed/FrescoImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->e:Lcom/vk/newsfeed/FrescoImageView;

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->h:Lcom/vk/newsfeed/holders/zhukov/PostingHolders1;

    invoke-virtual {v0, p1}, Lcom/vk/newsfeed/holders/zhukov/PostingHolders1;->a(Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces$a;->a(Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces3;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/newsfeed/holders/zhukov/PhotoHolder;->g:Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/newsfeed/holders/zhukov/BaseHolder;->a()Lcom/vk/dto/common/Attachment;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vk/newsfeed/posting/viewpresenter/attachments/AttachmentsPreviewInterfaces;->a(Lcom/vk/dto/common/Attachment;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/vk/newsfeed/holders/zhukov/BaseHolder;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method
