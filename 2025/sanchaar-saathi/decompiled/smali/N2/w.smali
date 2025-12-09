.class public LN2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1}, LN2/w;->b(Landroid/content/Context;)Landroid/view/WindowInsets;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LS/g0;->a()I

    move-result v0

    invoke-static {p1, v0}, LN2/v;->a(Landroid/view/WindowInsets;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p1}, Lg3/h;->e(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;)V
    .locals 2

    invoke-virtual {p0, p1}, LN2/w;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iget v0, p2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->d:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iput v0, p2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->d:I

    return-void
.end method
