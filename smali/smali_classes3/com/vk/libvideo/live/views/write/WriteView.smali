.class public Lcom/vk/libvideo/live/views/write/WriteView;
.super Landroid/widget/LinearLayout;
.source "WriteView.java"

# interfaces
.implements Lcom/vk/stickers/f0/KeyboardPopup$l;
.implements Lcom/vk/stickers/f0/KeyboardPopup$k;
.implements Lcom/vk/libvideo/live/views/write/WriteContract1;
.implements Lcom/vk/navigation/BackListener;
.implements Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/libvideo/live/views/write/WriteView$z;
    }
.end annotation


# instance fields
.field private final B:Landroid/widget/ImageView;

.field private final C:Landroid/widget/ImageView;

.field private final D:Landroid/widget/ImageView;

.field private final E:Landroid/widget/ImageView;

.field private final F:Landroid/widget/EditText;

.field private final G:Landroid/view/ViewGroup;

.field private final H:Landroid/view/ViewGroup;

.field private final I:Landroid/view/ViewGroup;

.field private final J:Landroid/view/ViewGroup;

.field private final K:Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

.field private final L:Lcom/vk/core/util/TimeoutLock;

.field private final M:Landroid/graphics/drawable/TransitionDrawable;

.field private final N:Lcom/vk/stickers/StickersView$k;

.field public O:Lkotlin/jvm/b/Functions2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/Functions2<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field P:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field Q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private R:I

.field private S:Z

.field private final T:Landroid/content/BroadcastReceiver;

.field private U:Z

.field private V:Z

.field private W:Lcom/vk/libvideo/live/views/write/WriteContract$State;

.field private final a:Landroid/widget/ImageView;

.field private a0:Landroid/view/Window;

.field private final b:Landroid/widget/ImageView;

.field private b0:Landroid/view/ViewGroup;

.field private final c:Landroid/widget/ImageView;

.field private c0:Z

.field private final d:Landroid/widget/ImageView;

.field private d0:Z

.field private final e:Landroid/widget/ImageView;

.field private e0:Z

.field private final f:Landroid/widget/ImageView;

.field private f0:Lcom/vk/stickers/StickersView;

.field private final g:Landroid/widget/ImageView;

.field private g0:Lcom/vk/stickers/f0/KeyboardPopup;

.field private final h:Landroid/widget/TextView;

.field private h0:Lcom/vk/libvideo/live/views/write/WriteContract;

.field private i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

.field private j0:Landroid/widget/Toast;

.field private k0:I

.field private l0:Lcom/vk/libvideo/live/base/LiveToolTip;

.field private m0:Z

.field private n0:Lio/reactivex/disposables/Disposable;

.field private o0:Landroid/animation/ValueAnimator;

.field private p0:Ljava/lang/String;

.field private q0:Lcom/vk/stickers/StickersView$k;

.field private r0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/vk/libvideo/live/views/write/WriteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/vk/libvideo/live/views/write/WriteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/vk/core/util/TimeoutLock;

    const-wide/16 v0, 0x12c

    invoke-direct {p2, v0, v1}, Lcom/vk/core/util/TimeoutLock;-><init>(J)V

    iput-object p2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->L:Lcom/vk/core/util/TimeoutLock;

    .line 5
    new-instance p2, Lcom/vk/libvideo/live/views/write/WriteView$z;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/vk/libvideo/live/views/write/WriteView$z;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;Lcom/vk/libvideo/live/views/write/WriteView$k;)V

    iput-object p2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->N:Lcom/vk/stickers/StickersView$k;

    .line 6
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    .line 7
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    const p2, 0x7fffffff

    .line 8
    iput p2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->R:I

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->S:Z

    .line 10
    new-instance p3, Lcom/vk/libvideo/live/views/write/WriteView$k;

    invoke-direct {p3, p0}, Lcom/vk/libvideo/live/views/write/WriteView$k;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    iput-object p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->T:Landroid/content/BroadcastReceiver;

    const/4 p3, 0x0

    .line 11
    iput-boolean p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->U:Z

    .line 12
    iput-boolean p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c0:Z

    .line 13
    iput-boolean p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d0:Z

    .line 14
    iput-boolean p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->m0:Z

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->p0:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->r0:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 18
    sget v1, Lcom/vk/libvideo/h;->live_write_bar:I

    invoke-virtual {v0, v1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/vk/bridges/VideoBridge;->a()Lcom/vk/bridges/VideoBridge1;

    move-result-object v1

    invoke-interface {v1}, Lcom/vk/bridges/VideoBridge1;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->U:Z

    .line 20
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 21
    invoke-static {v1}, Lcom/vk/core/util/Screen;->a(F)I

    move-result v2

    invoke-static {v1}, Lcom/vk/core/util/Screen;->a(F)I

    move-result v3

    invoke-virtual {p0, v2, p3, v3, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 22
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 23
    sget v2, Lcom/vk/libvideo/g;->liveWritebarActionHolder:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->H:Landroid/view/ViewGroup;

    .line 24
    sget v2, Lcom/vk/libvideo/g;->liveWritebaMiddleHolder:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->G:Landroid/view/ViewGroup;

    .line 25
    sget v2, Lcom/vk/libvideo/g;->liveWritebarEdit:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    .line 26
    sget v2, Lcom/vk/libvideo/g;->liveWritebarEmoji:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a:Landroid/widget/ImageView;

    .line 27
    sget v2, Lcom/vk/libvideo/g;->liveWritebarGifts:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c:Landroid/widget/ImageView;

    .line 28
    sget v2, Lcom/vk/libvideo/g;->liveWritebarMasks:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d:Landroid/widget/ImageView;

    .line 29
    sget v2, Lcom/vk/libvideo/g;->liveWritebarToggle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e:Landroid/widget/ImageView;

    .line 30
    sget v2, Lcom/vk/libvideo/g;->liveWritebarEmojiNew:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->E:Landroid/widget/ImageView;

    .line 31
    sget v2, Lcom/vk/libvideo/g;->liveWritebarSendLike:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b:Landroid/widget/ImageView;

    .line 32
    sget v2, Lcom/vk/libvideo/g;->liveWritebarSend:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f:Landroid/widget/ImageView;

    .line 33
    sget v2, Lcom/vk/libvideo/g;->liveWritebarSuper:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    .line 34
    sget v2, Lcom/vk/libvideo/g;->liveWritebarActionGo:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g:Landroid/widget/ImageView;

    .line 35
    sget v2, Lcom/vk/libvideo/g;->liveWritebarActionCreate:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->B:Landroid/widget/ImageView;

    .line 36
    sget v2, Lcom/vk/libvideo/g;->liveWritebarActionGoBig:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h:Landroid/widget/TextView;

    .line 37
    sget v2, Lcom/vk/libvideo/g;->liveWritebarSendMessageIcon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->C:Landroid/widget/ImageView;

    .line 38
    sget v2, Lcom/vk/libvideo/g;->liveWritebarHolder:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->I:Landroid/view/ViewGroup;

    .line 39
    sget v2, Lcom/vk/libvideo/g;->liveWritebarEmojiHodler:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->J:Landroid/view/ViewGroup;

    .line 40
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->M:Landroid/graphics/drawable/TransitionDrawable;

    .line 41
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->M:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 42
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->I:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->G:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->H:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->C:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->B:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->J:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->E:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 58
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->x()V

    .line 59
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->B:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$r;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$r;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->C:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$s;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$s;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$t;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$t;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$u;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$u;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$v;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$v;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$w;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$w;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$x;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$x;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$y;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$y;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$a;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$a;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$b;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$b;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$c;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$c;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 70
    invoke-static {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->setNoClipRecursive(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    new-instance v2, Lcom/vk/libvideo/live/views/write/WriteView$d;

    invoke-direct {v2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$d;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    new-instance v0, Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    new-instance v4, Lcom/vk/libvideo/live/views/write/WriteView$e;

    invoke-direct {v4, p0}, Lcom/vk/libvideo/live/views/write/WriteView$e;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-direct {v0, v2, v3, v3, v4}, Lcom/vk/stickers/AutoSuggestStickersPopupWindow;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;Lcom/vk/stickers/StickersView$k;)V

    iput-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->K:Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

    .line 73
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->K:Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

    invoke-virtual {v0, v1}, Lcom/vk/stickers/AutoSuggestStickersPopupWindow;->a(F)V

    .line 74
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->K:Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/stickers/AutoSuggestStickersPopupWindow;->b(F)V

    .line 75
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->K:Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

    invoke-virtual {v0, p3}, Lcom/vk/stickers/AutoSuggestStickersPopupWindow;->a(Z)V

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 76
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 77
    new-instance v1, Lcom/vk/libvideo/live/views/write/WriteView$f;

    invoke-direct {v1, p0, v0, p3}, Lcom/vk/libvideo/live/views/write/WriteView$f;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;Landroid/graphics/Point;[I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 78
    iget-object p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    new-instance v0, Lcom/vk/libvideo/live/views/write/WriteView$g;

    invoke-direct {v0, p0}, Lcom/vk/libvideo/live/views/write/WriteView$g;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 79
    iget-object p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    new-instance v0, Lcom/vk/libvideo/live/views/write/WriteView$h;

    invoke-direct {v0, p0}, Lcom/vk/libvideo/live/views/write/WriteView$h;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 80
    iget-object p3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    new-instance v0, Lcom/vk/libvideo/live/views/write/WriteView$i;

    invoke-direct {v0, p0}, Lcom/vk/libvideo/live/views/write/WriteView$i;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 82
    invoke-static {p1}, Lcom/vk/core/util/Screen;->l(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->V:Z

    .line 83
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f:Landroid/widget/ImageView;

    new-instance p2, Lcom/vk/libvideo/live/views/write/WriteView$j;

    invoke-direct {p2, p0}, Lcom/vk/libvideo/live/views/write/WriteView$j;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private A()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->n0:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->o()V

    .line 3
    iput-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->n0:Lio/reactivex/disposables/Disposable;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->a()V

    .line 6
    iput-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->V:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c0:Z

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->j0:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/vk/libvideo/j;->live_write_super_message_tooltip:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->j0:Landroid/widget/Toast;

    .line 11
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->j0:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/vk/libvideo/h;->live_super_message_tooltip:I

    invoke-static {v0, v3, v1}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 14
    invoke-static {v1}, Lcom/vk/core/util/Screen;->d(F)I

    move-result v3

    .line 15
    new-instance v4, Lcom/vk/libvideo/live/base/LiveToolTip;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vk/libvideo/live/base/LiveToolTip;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v4, v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->a(Landroid/view/View;)Lcom/vk/libvideo/live/base/LiveToolTip;

    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a0:Landroid/view/Window;

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v5, 0x1020002

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->a(Landroid/view/ViewGroup;)Lcom/vk/libvideo/live/base/LiveToolTip;

    sget v0, Lcom/vk/libvideo/b;->background_content:I

    .line 18
    invoke-static {v0}, Lru/vtosters/lite/themes/VTLColors;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->a(I)Lcom/vk/libvideo/live/base/LiveToolTip;

    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v4, v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->b(Landroid/view/View;)Lcom/vk/libvideo/live/base/LiveToolTip;

    const/4 v0, 0x0

    .line 20
    invoke-virtual {v4, v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->b(I)Lcom/vk/libvideo/live/base/LiveToolTip;

    const/4 v5, 0x2

    new-array v6, v5, [F

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v6, v0

    const/4 v3, 0x0

    aput v3, v6, v2

    const/16 v3, 0xc8

    .line 21
    invoke-virtual {v4, v2, v3, v6}, Lcom/vk/libvideo/live/base/LiveToolTip;->a(II[F)Lcom/vk/libvideo/live/base/LiveToolTip;

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    .line 22
    invoke-virtual {v4, v3, v6}, Lcom/vk/libvideo/live/base/LiveToolTip;->b(I[F)Lcom/vk/libvideo/live/base/LiveToolTip;

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    .line 23
    invoke-virtual {v4, v3, v5}, Lcom/vk/libvideo/live/base/LiveToolTip;->a(I[F)Lcom/vk/libvideo/live/base/LiveToolTip;

    .line 24
    invoke-virtual {v4, v2}, Lcom/vk/libvideo/live/base/LiveToolTip;->c(Z)Lcom/vk/libvideo/live/base/LiveToolTip;

    .line 25
    invoke-virtual {v4, v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->b(Z)Lcom/vk/libvideo/live/base/LiveToolTip;

    .line 26
    invoke-virtual {v4, v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->a(Z)Lcom/vk/libvideo/live/base/LiveToolTip;

    .line 27
    invoke-static {v1}, Lcom/vk/core/util/Screen;->d(F)I

    move-result v2

    invoke-static {v1}, Lcom/vk/core/util/Screen;->d(F)I

    move-result v3

    invoke-static {v1}, Lcom/vk/core/util/Screen;->d(F)I

    move-result v1

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/vk/core/util/Screen;->d(F)I

    move-result v5

    invoke-virtual {v4, v2, v3, v1, v5}, Lcom/vk/libvideo/live/base/LiveToolTip;->a(IIII)Lcom/vk/libvideo/live/base/LiveToolTip;

    .line 28
    invoke-virtual {v4, v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->c(I)Lcom/vk/libvideo/live/base/LiveToolTip;

    .line 29
    invoke-virtual {v4}, Lcom/vk/libvideo/live/base/LiveToolTip;->d()Lcom/vk/libvideo/live/base/LiveToolTip;

    iput-object v4, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private B()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->m0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->v()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->h()Lcom/vk/libvideo/live/base/LiveStatNew;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->h()Lcom/vk/libvideo/live/base/LiveStatNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/libvideo/live/base/LiveStatNew;->a()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->w()V

    .line 6
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->A()V

    .line 7
    :goto_0
    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->m0:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->m0:Z

    return-void
.end method

.method static synthetic a(Lcom/vk/libvideo/live/views/write/WriteView;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->R:I

    return p1
.end method

.method static synthetic a(Lcom/vk/libvideo/live/views/write/WriteView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->E:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a(Lcom/vk/libvideo/live/views/write/WriteView;Lcom/vk/libvideo/live/base/LiveToolTip;)Lcom/vk/libvideo/live/base/LiveToolTip;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    return-object p1
.end method

.method private a(ILcom/vk/dto/stickers/StickerItem;Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-virtual {p2}, Lcom/vk/dto/stickers/StickerItem;->getId()I

    move-result p3

    sget v0, Lcom/vk/stickers/StickersConfig;->g:I

    invoke-virtual {p2, v0}, Lcom/vk/dto/stickers/StickerItem;->h(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/vk/libvideo/live/views/write/WriteContract;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/vk/libvideo/live/views/write/WriteView;ILcom/vk/dto/stickers/StickerItem;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/libvideo/live/views/write/WriteView;->a(ILcom/vk/dto/stickers/StickerItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/vk/libvideo/live/views/write/WriteView;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/vk/libvideo/live/views/write/WriteView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method static synthetic a(Lcom/vk/libvideo/live/views/write/WriteView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c0:Z

    return p1
.end method

.method static synthetic b(Lcom/vk/libvideo/live/views/write/WriteView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e0:Z

    return p0
.end method

.method static synthetic b(Lcom/vk/libvideo/live/views/write/WriteView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->m0:Z

    return p1
.end method

.method static synthetic c(Lcom/vk/libvideo/live/views/write/WriteView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->z()V

    return-void
.end method

.method static synthetic c(Lcom/vk/libvideo/live/views/write/WriteView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/vk/libvideo/live/views/write/WriteView;->setUpPosition(Z)V

    return-void
.end method

.method static synthetic d(Lcom/vk/libvideo/live/views/write/WriteView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->l()V

    return-void
.end method

.method static synthetic e(Lcom/vk/libvideo/live/views/write/WriteView;)Lcom/vk/libvideo/live/base/LiveToolTip;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    return-object p0
.end method

.method static synthetic f(Lcom/vk/libvideo/live/views/write/WriteView;)Lcom/vk/stickers/StickersView$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->q0:Lcom/vk/stickers/StickersView$k;

    return-object p0
.end method

.method static synthetic g(Lcom/vk/libvideo/live/views/write/WriteView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic h(Lcom/vk/libvideo/live/views/write/WriteView;)Lcom/vk/stickers/AutoSuggestStickersPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->K:Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

    return-object p0
.end method

.method static synthetic i(Lcom/vk/libvideo/live/views/write/WriteView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->r0:I

    return p0
.end method

.method static synthetic j(Lcom/vk/libvideo/live/views/write/WriteView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c0:Z

    return p0
.end method

.method static synthetic k(Lcom/vk/libvideo/live/views/write/WriteView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->m()V

    return-void
.end method

.method private l()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->k0:I

    const/16 v2, 0x96

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->M:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->k0:I

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->M:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->k0:I

    return-void
.end method

.method static synthetic l(Lcom/vk/libvideo/live/views/write/WriteView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->S:Z

    return p0
.end method

.method static synthetic m(Lcom/vk/libvideo/live/views/write/WriteView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->R:I

    return p0
.end method

.method private m()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-boolean v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->m0:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {v1, v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {v1, v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->a(Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->n()V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->j0:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/j;->live_write_empty_comment_send:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->j0:Landroid/widget/Toast;

    .line 11
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->j0:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private n()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/vk/libvideo/live/views/write/WriteView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->p()V

    return-void
.end method

.method static synthetic o(Lcom/vk/libvideo/live/views/write/WriteView;)Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    return-object p0
.end method

.method static synthetic p(Lcom/vk/libvideo/live/views/write/WriteView;)Lcom/vk/libvideo/live/views/write/WriteContract;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    return-object p0
.end method

.method private p()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private q()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-static {}, Lcom/vk/bridges/ActionLinksBridge;->a()Lcom/vk/bridges/ActionLinksBridge1;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->H:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    .line 6
    invoke-interface {v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->f()Z

    move-result v4

    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    .line 7
    invoke-interface {v0}, Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;->f()Lcom/vk/dto/actionlinks/ActionLink;

    move-result-object v5

    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    .line 8
    invoke-interface {v0}, Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;->b()I

    move-result v6

    const/4 v7, 0x0

    new-instance v8, Lcom/vk/libvideo/live/views/write/WriteView$p;

    invoke-direct {v8, p0}, Lcom/vk/libvideo/live/views/write/WriteView$p;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 9
    invoke-interface/range {v1 .. v13}, Lcom/vk/bridges/ActionLinksBridge1;->a(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/vk/dto/actionlinks/ActionLink;IILkotlin/jvm/b/Functions;Lkotlin/jvm/b/Functions;ZZZLjava/lang/Integer;)Lkotlin/jvm/b/Functions2;

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/vk/libvideo/live/views/write/WriteView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->B()V

    return-void
.end method

.method private r()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/c;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->p0:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->p0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/j;->live_msg_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-static {}, Lcom/vk/emoji/Emoji;->g()Lcom/vk/emoji/Emoji;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->p0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vk/emoji/Emoji;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 9
    invoke-direct {p0, v1}, Lcom/vk/libvideo/live/views/write/WriteView;->setEditTextRightPadding(Z)V

    return-void
.end method

.method static synthetic r(Lcom/vk/libvideo/live/views/write/WriteView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d0:Z

    return p0
.end method

.method static synthetic s(Lcom/vk/libvideo/live/views/write/WriteView;)Lcom/vk/core/util/TimeoutLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->L:Lcom/vk/core/util/TimeoutLock;

    return-object p0
.end method

.method private s()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/c;->white_opacity40:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/j;->live_comments_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setActionGoByType(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/vk/libvideo/e;->ic_linked_24:I

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "group"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "post"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "poll"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "page"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v2, "app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "product"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "article"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    sget v0, Lcom/vk/libvideo/e;->ic_link_24:I

    goto :goto_1

    .line 4
    :pswitch_1
    sget v0, Lcom/vk/libvideo/e;->ic_link_24:I

    goto :goto_1

    .line 5
    :pswitch_2
    sget v0, Lcom/vk/libvideo/e;->ic_market_24:I

    goto :goto_1

    .line 6
    :pswitch_3
    sget v0, Lcom/vk/libvideo/e;->ic_poll_24:I

    goto :goto_1

    .line 7
    :pswitch_4
    sget v0, Lcom/vk/libvideo/e;->ic_post_24:I

    goto :goto_1

    .line 8
    :pswitch_5
    sget v0, Lcom/vk/libvideo/e;->ic_services_24:I

    goto :goto_1

    .line 9
    :pswitch_6
    sget v0, Lcom/vk/libvideo/e;->ic_users_24:I

    goto :goto_1

    .line 10
    :pswitch_7
    sget v0, Lcom/vk/libvideo/e;->ic_user_24:I

    .line 11
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/c;->black:I

    invoke-static {v1, v0, v2}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2ba7330a -> :sswitch_7
        -0x12723311 -> :sswitch_6
        0x17a21 -> :sswitch_5
        0x34628f -> :sswitch_4
        0x3497bf -> :sswitch_3
        0x3498a0 -> :sswitch_2
        0x36ebcb -> :sswitch_1
        0x5e0f67f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEditTextRightPadding(Z)V
    .locals 4

    const/16 v0, 0x36

    .line 1
    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/write/WriteContract;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/write/WriteContract;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x5e

    .line 3
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method public static setNoClipRecursive(Landroid/view/View;)V
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/libvideo/live/views/write/WriteView;->setNoClipRecursive(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setUpPosition(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d0:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d0:Z

    .line 3
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 5
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/write/WriteContract;->getState()Lcom/vk/libvideo/live/views/write/WriteContract$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/libvideo/live/views/write/WriteView;->setState(Lcom/vk/libvideo/live/views/write/WriteContract$State;)V

    .line 6
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->n()V

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/vk/libvideo/live/views/write/WriteView;)Lcom/vk/stickers/f0/KeyboardPopup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    return-object p0
.end method

.method private u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/c;->white_opacity40:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/c;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 5
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/vk/libvideo/j;->live_msg_hint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7
    invoke-direct {p0, v1}, Lcom/vk/libvideo/live/views/write/WriteView;->setEditTextRightPadding(Z)V

    return-void
.end method

.method private v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/e;->ic_flash_circle_outline_28:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/j;->story_accessibility_supermsg_on:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/e;->ic_flash_circle_28:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/j;->story_accessibility_supermsg_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/e;->ic_smile_outline_28:I

    sget v3, Lcom/vk/libvideo/c;->white:I

    invoke-static {v1, v2, v3}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->E:Landroid/widget/ImageView;

    sget-object v1, Lcom/vk/stickers/Stickers;->l:Lcom/vk/stickers/Stickers;

    invoke-virtual {v1}, Lcom/vk/stickers/Stickers;->h()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->S:Z

    return-void
.end method

.method private y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/e;->ic_smile_outline_28:I

    sget v3, Lcom/vk/libvideo/c;->white:I

    invoke-static {v1, v2, v3}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->E:Landroid/widget/ImageView;

    sget-object v1, Lcom/vk/stickers/Stickers;->l:Lcom/vk/stickers/Stickers;

    invoke-virtual {v1}, Lcom/vk/stickers/Stickers;->h()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iput-boolean v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->S:Z

    return-void
.end method

.method private z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/e;->ic_smile_fill_28:I

    sget v3, Lcom/vk/libvideo/c;->white:I

    invoke-static {v1, v2, v3}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->E:Landroid/widget/ImageView;

    sget-object v1, Lcom/vk/stickers/Stickers;->l:Lcom/vk/stickers/Stickers;

    invoke-virtual {v1}, Lcom/vk/stickers/Stickers;->h()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iput-boolean v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->S:Z

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/vk/libvideo/live/base/ViewHelper;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public K()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 6
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public M1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e0:Z

    .line 3
    invoke-virtual {v0}, Lcom/vk/stickers/f0/KeyboardPopup;->a()V

    :cond_0
    return-void
.end method

.method public N1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vk/libvideo/live/views/write/WriteView$n;

    invoke-direct {v0, p0}, Lcom/vk/libvideo/live/views/write/WriteView$n;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-static {v0}, Lcom/vk/core/util/ThreadUtils;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/vk/libvideo/live/views/write/WriteView$o;

    invoke-direct {v0, p0}, Lcom/vk/libvideo/live/views/write/WriteView$o;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public O1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/j;->live_msg_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-static {}, Lcom/vk/emoji/Emoji;->g()Lcom/vk/emoji/Emoji;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vk/emoji/Emoji;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public P1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/vk/libvideo/j;->live_msg_hint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    iput-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->p0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->o0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 19
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 20
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    iput-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->o0:Landroid/animation/ValueAnimator;

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->M1()V

    .line 23
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->D()V

    .line 24
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {v0}, Lcom/vk/libvideo/live/base/BasePresenter;->a()V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0, v1}, Lcom/vk/stickers/f0/KeyboardPopup;->a(Lcom/vk/stickers/f0/KeyboardPopup$k;)V

    .line 28
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    invoke-virtual {v0, v1}, Lcom/vk/stickers/f0/KeyboardPopup;->a(Lcom/vk/stickers/f0/KeyboardPopup$l;)V

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->n0:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->o()V

    .line 31
    iput-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->n0:Lio/reactivex/disposables/Disposable;

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {v0}, Lcom/vk/libvideo/live/base/LiveToolTip;->a()V

    .line 34
    iput-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->l0:Lcom/vk/libvideo/live/base/LiveToolTip;

    :cond_4
    return-void
.end method

.method public a(Lcom/vk/stickers/f0/KeyboardPopup;)V
    .locals 1

    .line 11
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->O:Lkotlin/jvm/b/Functions2;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->x()V

    return-void
.end method

.method public a(ZLcom/vk/stickers/f0/KeyboardPopup;)V
    .locals 1

    .line 7
    iget-object p2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->O:Lkotlin/jvm/b/Functions2;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->z()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->y()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->getState()Lcom/vk/libvideo/live/views/write/WriteContract$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/libvideo/live/views/write/WriteView;->setState(Lcom/vk/libvideo/live/views/write/WriteContract$State;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->getState()Lcom/vk/libvideo/live/views/write/WriteContract$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/libvideo/live/views/write/WriteView;->setState(Lcom/vk/libvideo/live/views/write/WriteContract$State;)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->B:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/e;->ic_attachment_24:I

    sget v3, Lcom/vk/libvideo/c;->black:I

    invoke-static {v1, v2, v3}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->B:Landroid/widget/ImageView;

    sget v1, Lcom/vk/libvideo/e;->live_write_button_ad_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f0:Lcom/vk/stickers/StickersView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/vk/stickers/StickersView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    :cond_0
    new-instance p1, Lcom/vk/libvideo/live/views/write/WriteView$m;

    invoke-direct {p1, p0}, Lcom/vk/libvideo/live/views/write/WriteView$m;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    invoke-static {p1}, Lcom/vk/core/util/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/vk/libvideo/live/base/BasePresenter;->e()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->B:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vk/libvideo/e;->ic_attachment_24:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->B:Landroid/widget/ImageView;

    sget v1, Lcom/vk/libvideo/e;->live_write_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->getState()Lcom/vk/libvideo/live/views/write/WriteContract$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/libvideo/live/views/write/WriteView;->setState(Lcom/vk/libvideo/live/views/write/WriteContract$State;)V

    return-void
.end method

.method public getActionLinksPresenter()Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    return-object v0
.end method

.method public getPresenter()Lcom/vk/libvideo/live/views/write/WriteContract;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    return-object v0
.end method

.method public bridge synthetic getPresenter()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->getPresenter()Lcom/vk/libvideo/live/views/write/WriteContract;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a0:Landroid/view/Window;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d0:Z

    return v0
.end method

.method public j()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e0:Z

    .line 4
    invoke-virtual {v0}, Lcom/vk/stickers/f0/KeyboardPopup;->d()V

    .line 5
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {v0}, Lcom/vk/libvideo/live/views/write/WriteContract;->I()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e0:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->M1()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->j()V

    :goto_0
    return-void
.end method

.method public o()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/stickers/f0/KeyboardPopup;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e0:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->D()V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->M1()V

    .line 5
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->D()V

    .line 6
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->n()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.vkontakte.android.STICKERS_NUM_UPDATES"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->T:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vtosters.lite.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->E:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->S:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vk/stickers/Stickers;->l:Lcom/vk/stickers/Stickers;

    invoke-virtual {v1}, Lcom/vk/stickers/Stickers;->h()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "error unregisterReceiver"

    aput-object v2, v0, v1

    .line 3
    invoke-static {v0}, Lcom/vk/log/L;->a([Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->K:Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

    invoke-virtual {v0}, Lcom/vk/stickers/AutoSuggestStickersPopupWindow;->c()V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->L:Lcom/vk/core/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/core/util/TimeoutLock;->c()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e0:Z

    .line 3
    iget-boolean v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c0:Z

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/vk/libvideo/live/views/write/WriteView;->setUpPosition(Z)V

    :cond_0
    return-void
.end method

.method public setActionButtonClickCount(I)V
    .locals 0

    return-void
.end method

.method public setActionLinksPresenter(Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    return-void
.end method

.method public setAutoSuggestPopupListener(Lcom/vk/stickers/StickersView$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->q0:Lcom/vk/stickers/StickersView$k;

    return-void
.end method

.method public setCadreBottomOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->r0:I

    return-void
.end method

.method public setKeyboardPopup(Lcom/vk/stickers/f0/KeyboardPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    return-void
.end method

.method public setMaskButtonState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget p1, Lcom/vk/libvideo/e;->ic_mask_fill_24:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/vk/libvideo/e;->ic_mask_outline_24:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setPresenter(Lcom/vk/libvideo/live/views/write/WriteContract;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-virtual {p0, p1}, Lcom/vk/libvideo/live/views/write/WriteView;->setPresenter(Lcom/vk/libvideo/live/views/write/WriteContract;)V

    return-void
.end method

.method public setRedDot(Z)V
    .locals 0

    return-void
.end method

.method public setState(Lcom/vk/libvideo/live/views/write/WriteContract$State;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->W:Lcom/vk/libvideo/live/views/write/WriteContract$State;

    .line 2
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 3
    iget-boolean p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d0:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->G:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->I:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->J:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->W:Lcom/vk/libvideo/live/views/write/WriteContract$State;

    sget-object v1, Lcom/vk/libvideo/live/views/write/WriteContract$State;->STREAMING:Lcom/vk/libvideo/live/views/write/WriteContract$State;

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/write/WriteContract;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->D:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->u()V

    goto/16 :goto_3

    .line 11
    :cond_1
    sget-object p1, Lcom/vk/libvideo/live/views/write/WriteView$q;->a:[I

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->W:Lcom/vk/libvideo/live/views/write/WriteContract$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto/16 :goto_2

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->G:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->H:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->q()V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->G:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->I:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_0
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->s()V

    goto/16 :goto_2

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->G:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->I:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->J:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/write/WriteContract;->W()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;->d()Z

    move-result p1

    if-nez p1, :cond_5

    .line 26
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->c:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->r()V

    goto :goto_2

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->G:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->H:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->C:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->q()V

    goto :goto_1

    .line 34
    :cond_7
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->G:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->I:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->e:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->B:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->J:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->i0:Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/actionlinkssnippet/ActionLinksSnippet;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 40
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->d()V

    goto :goto_1

    .line 41
    :cond_8
    invoke-virtual {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->f()V

    .line 42
    :goto_1
    iget-boolean p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->U:Z

    if-eqz p1, :cond_9

    .line 43
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->d:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_9
    invoke-direct {p0}, Lcom/vk/libvideo/live/views/write/WriteView;->r()V

    .line 45
    :goto_2
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->K:Lcom/vk/stickers/AutoSuggestStickersPopupWindow;

    if-eqz p1, :cond_a

    .line 46
    invoke-virtual {p1}, Lcom/vk/stickers/AutoSuggestStickersPopupWindow;->c()V

    .line 47
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 49
    :cond_b
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->Q:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 50
    iget-object v3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->P:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const/16 v3, 0x8

    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 52
    :cond_d
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    invoke-interface {p1}, Lcom/vk/libvideo/live/views/write/WriteContract;->f()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 53
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f0:Lcom/vk/stickers/StickersView;

    invoke-virtual {p1, v2}, Lcom/vk/stickers/StickersView;->setAllowOpenStore(Z)V

    .line 54
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f0:Lcom/vk/stickers/StickersView;

    invoke-virtual {p1, v2}, Lcom/vk/stickers/StickersView;->setAllowOpenSettings(Z)V

    goto :goto_6

    .line 55
    :cond_e
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f0:Lcom/vk/stickers/StickersView;

    invoke-virtual {p1, v0}, Lcom/vk/stickers/StickersView;->setAllowOpenStore(Z)V

    .line 56
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f0:Lcom/vk/stickers/StickersView;

    invoke-virtual {p1, v0}, Lcom/vk/stickers/StickersView;->setAllowOpenSettings(Z)V

    :goto_6
    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a0:Landroid/view/Window;

    return-void
.end method

.method public setWrapperForKeyboardPopup(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b0:Landroid/view/ViewGroup;

    .line 2
    new-instance p1, Lcom/vk/stickers/StickersView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->N:Lcom/vk/stickers/StickersView$k;

    invoke-direct {p1, v0, v1}, Lcom/vk/stickers/StickersView;-><init>(Landroid/content/Context;Lcom/vk/stickers/StickersView$k;)V

    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f0:Lcom/vk/stickers/StickersView;

    .line 3
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f0:Lcom/vk/stickers/StickersView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4
    new-instance p1, Lcom/vk/stickers/f0/KeyboardPopup;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/vk/libvideo/live/views/write/WriteView;->b0:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vk/libvideo/live/views/write/WriteView;->f0:Lcom/vk/stickers/StickersView;

    iget-object v4, p0, Lcom/vk/libvideo/live/views/write/WriteView;->a0:Landroid/view/Window;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/vk/stickers/f0/KeyboardPopup;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    .line 5
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    invoke-virtual {p1, p0}, Lcom/vk/stickers/f0/KeyboardPopup;->a(Lcom/vk/stickers/f0/KeyboardPopup$k;)V

    .line 6
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/vk/stickers/f0/KeyboardPopup;->a(Z)V

    .line 7
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    invoke-virtual {p1, v0}, Lcom/vk/stickers/f0/KeyboardPopup;->b(Z)V

    .line 8
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    invoke-virtual {p1, p0}, Lcom/vk/stickers/f0/KeyboardPopup;->a(Lcom/vk/stickers/f0/KeyboardPopup$l;)V

    .line 9
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->g0:Lcom/vk/stickers/f0/KeyboardPopup;

    invoke-virtual {p0, p1}, Lcom/vk/libvideo/live/views/write/WriteView;->setKeyboardPopup(Lcom/vk/stickers/f0/KeyboardPopup;)V

    .line 10
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->N:Lcom/vk/stickers/StickersView$k;

    invoke-virtual {p0, p1}, Lcom/vk/libvideo/live/views/write/WriteView;->setAutoSuggestPopupListener(Lcom/vk/stickers/StickersView$k;)V

    return-void
.end method

.method public t()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vk/libvideo/live/views/write/WriteView;->h0:Lcom/vk/libvideo/live/views/write/WriteContract;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/vk/libvideo/live/base/BasePresenter;->t()V

    :cond_0
    return-void
.end method

.method public x(Z)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->n0:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->o()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->n0:Lio/reactivex/disposables/Disposable;

    :cond_0
    const-wide/16 v0, 0x2bc

    .line 7
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->j(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 8
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 9
    invoke-static {}, Lio/reactivex/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/vk/libvideo/live/views/write/WriteView$l;

    invoke-direct {v0, p0}, Lcom/vk/libvideo/live/views/write/WriteView$l;-><init>(Lcom/vk/libvideo/live/views/write/WriteView;)V

    .line 10
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->f(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/libvideo/live/views/write/WriteView;->n0:Lio/reactivex/disposables/Disposable;

    return-void
.end method
