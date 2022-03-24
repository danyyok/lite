.class public Lkotlin/d/Progressions;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/a/KMarkers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/d/Progressions$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;",
        "Lkotlin/jvm/internal/a/KMarkers;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/d/Progressions$a;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/d/Progressions$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/d/Progressions$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/d/Progressions;->a:Lkotlin/d/Progressions$a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    .line 80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_1

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 87
    :cond_1
    iput p1, p0, Lkotlin/d/Progressions;->b:I

    .line 92
    invoke-static {p1, p2, p3}, Lkotlin/b/progressionUtil;->a(III)I

    move-result p1

    iput p1, p0, Lkotlin/d/Progressions;->c:I

    .line 97
    iput p3, p0, Lkotlin/d/Progressions;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 87
    iget v0, p0, Lkotlin/d/Progressions;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 92
    iget v0, p0, Lkotlin/d/Progressions;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 97
    iget v0, p0, Lkotlin/d/Progressions;->d:I

    return v0
.end method

.method public d()Lkotlin/collections/Iterators1;
    .locals 4

    .line 99
    new-instance v0, Lkotlin/d/ProgressionIterators;

    iget v1, p0, Lkotlin/d/Progressions;->b:I

    iget v2, p0, Lkotlin/d/Progressions;->c:I

    iget v3, p0, Lkotlin/d/Progressions;->d:I

    invoke-direct {v0, v1, v2, v3}, Lkotlin/d/ProgressionIterators;-><init>(III)V

    check-cast v0, Lkotlin/collections/Iterators1;

    return-object v0
.end method

.method public e()Z
    .locals 4

    .line 102
    iget v0, p0, Lkotlin/d/Progressions;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lkotlin/d/Progressions;->b:I

    iget v3, p0, Lkotlin/d/Progressions;->c:I

    if-le v0, v3, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lkotlin/d/Progressions;->b:I

    iget v3, p0, Lkotlin/d/Progressions;->c:I

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 105
    instance-of v0, p1, Lkotlin/d/Progressions;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlin/d/Progressions;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/d/Progressions;

    invoke-virtual {v0}, Lkotlin/d/Progressions;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lkotlin/d/Progressions;->b:I

    check-cast p1, Lkotlin/d/Progressions;

    iget v1, p1, Lkotlin/d/Progressions;->b:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lkotlin/d/Progressions;->c:I

    iget v1, p1, Lkotlin/d/Progressions;->c:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lkotlin/d/Progressions;->d:I

    iget p1, p1, Lkotlin/d/Progressions;->d:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 109
    invoke-virtual {p0}, Lkotlin/d/Progressions;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lkotlin/d/Progressions;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/d/Progressions;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/d/Progressions;->d:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lkotlin/d/Progressions;->d()Lkotlin/collections/Iterators1;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    iget v0, p0, Lkotlin/d/Progressions;->d:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lkotlin/d/Progressions;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/d/Progressions;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/d/Progressions;->d:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lkotlin/d/Progressions;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " downTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/d/Progressions;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/d/Progressions;->d:I

    neg-int v1, v1

    goto :goto_0

    :goto_1
    return-object v0
.end method
