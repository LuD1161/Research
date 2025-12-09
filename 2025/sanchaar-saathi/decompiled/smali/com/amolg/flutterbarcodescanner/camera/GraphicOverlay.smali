.class public Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public d:F

.field public e:F

.field public f:I

.field public g:Ljava/util/Set;

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->c:Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->d:F

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->e:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->f:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->g:Ljava/util/Set;

    const/16 p1, 0x15e

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->k:I

    sget p2, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->N:I

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xe9

    :goto_0
    iput p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->l:I

    sget-object p1, Lcom/amolg/flutterbarcodescanner/b;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->n:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->o:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->m:I

    return-void
.end method


# virtual methods
.method public a(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;)V
    .locals 2

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;)V
    .locals 2

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(III)V
    .locals 0

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput p3, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->f:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public getGraphics()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->g:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHeightScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->e:F

    return v0
.end method

.method public getWidthScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->d:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->h:F

    iget v4, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->i:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->k:I

    invoke-static {v5, v6}, Lg1/a;->a(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->h:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->l:I

    invoke-static {v6, v7}, Lg1/a;->a(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->i:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    int-to-float v4, v3

    invoke-virtual {p1, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->n:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->o:I

    int-to-float v0, v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    iget v2, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->i:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->l:I

    invoke-static {v4, v5}, Lg1/a;->a(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->m:I

    int-to-float v5, v4

    add-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->p:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    iget v1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->i:F

    int-to-float v2, v4

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->p:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->p:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    int-to-float v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    int-to-float v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    :goto_1
    iget v6, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->h:F

    iget v7, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->k:I

    invoke-static {v0, v1}, Lg1/a;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    add-float v8, v6, v0

    iget v9, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->k:I

    invoke-static {v0, v1}, Lg1/a;->a(Landroid/content/Context;I)I

    move-result v0

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->h:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->l:I

    invoke-static {v0, v1}, Lg1/a;->a(Landroid/content/Context;I)I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->i:F

    iput v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->j:F

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method
