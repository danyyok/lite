.class public Lcom/vtosters/lite/ui/widget/GridView;
.super Landroid/view/ViewGroup;
.source "GridView.java"


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->b:I

    .line 7
    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/widget/GridView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->b:I

    .line 11
    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/widget/GridView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->b:I

    .line 15
    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/widget/GridView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/vtosters/lite/a0;->GridView:[I

    invoke-static {v0, p1, v1}, Lru/vtosters/lite/themes/VTLResources;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->b:I

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr p5, p3

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p4, p2

    sub-int/2addr p4, p3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    add-int/lit8 p2, p1, -0x1

    .line 5
    iget v1, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    mul-int p2, p2, v1

    sub-int/2addr p4, p2

    div-int/2addr p4, p1

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    add-int v3, p4, v2

    mul-int v3, v3, p2

    add-int/2addr v3, p3

    add-int/2addr v2, p4

    mul-int v2, v2, p2

    add-int/2addr v2, p3

    add-int/2addr v2, p4

    invoke-virtual {v1, v3, p1, v2, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    iget p2, p0, Lcom/vtosters/lite/ui/widget/GridView;->b:I

    if-gez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    .line 4
    iget v2, p0, Lcom/vtosters/lite/ui/widget/GridView;->a:I

    mul-int v1, v1, v2

    sub-int v1, p1, v1

    div-int/2addr v1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 5
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/16 v2, 0xfa0

    const/high16 v3, -0x80000000

    .line 6
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v5, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 10
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    add-int/2addr v5, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    add-int/2addr v5, p2

    .line 13
    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColumns(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/vtosters/lite/ui/widget/GridView;->b:I

    :cond_0
    return-void
.end method
