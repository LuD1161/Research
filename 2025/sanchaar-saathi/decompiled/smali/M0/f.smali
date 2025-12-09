.class public final LM0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LM0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LM0/f;

    invoke-direct {v0}, LM0/f;-><init>()V

    sput-object v0, LM0/f;->a:LM0/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LK0/k;Landroidx/window/extensions/layout/FoldingFeature;)LK0/c;
    .locals 6

    const-string v0, "windowMetrics"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oemFeature"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    return-object v3

    :cond_0
    sget-object v0, LK0/d$b;->b:LK0/d$b$a;

    invoke-virtual {v0}, LK0/d$b$a;->b()LK0/d$b;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, LK0/d$b;->b:LK0/d$b$a;

    invoke-virtual {v0}, LK0/d$b$a;->a()LK0/d$b;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v4

    if-eq v4, v2, :cond_3

    if-eq v4, v1, :cond_2

    return-object v3

    :cond_2
    sget-object v1, LK0/c$b;->d:LK0/c$b;

    goto :goto_1

    :cond_3
    sget-object v1, LK0/c$b;->c:LK0/c$b;

    :goto_1
    new-instance v2, LH0/b;

    invoke-virtual {p2}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const-string v5, "oemFeature.bounds"

    invoke-static {v4, v5}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4}, LH0/b;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v2}, LM0/f;->d(LK0/k;LH0/b;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance v3, LK0/d;

    new-instance p1, LH0/b;

    invoke-virtual {p2}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p2, v5}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, LH0/b;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v3, p1, v0, v1}, LK0/d;-><init>(LH0/b;LK0/d$b;LK0/c$b;)V

    :cond_4
    return-object v3
.end method

.method public final b(LK0/k;Landroidx/window/extensions/layout/WindowLayoutInfo;)LK0/j;
    .locals 4

    const-string v0, "windowMetrics"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p2

    const-string v0, "info.displayFeatures"

    invoke-static {p2, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/layout/DisplayFeature;

    instance-of v2, v1, Landroidx/window/extensions/layout/FoldingFeature;

    if-eqz v2, :cond_1

    sget-object v2, LM0/f;->a:LM0/f;

    const-string v3, "feature"

    invoke-static {v1, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/window/extensions/layout/FoldingFeature;

    invoke-virtual {v2, p1, v1}, LM0/f;->a(LK0/k;Landroidx/window/extensions/layout/FoldingFeature;)LK0/c;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, LK0/j;

    invoke-direct {p1, v0}, LK0/j;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final c(Landroid/content/Context;Landroidx/window/extensions/layout/WindowLayoutInfo;)LK0/j;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, LK0/m;->b:LK0/m;

    invoke-virtual {v0, p1}, LK0/m;->d(Landroid/content/Context;)LK0/k;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LM0/f;->b(LK0/k;Landroidx/window/extensions/layout/WindowLayoutInfo;)LK0/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    sget-object v0, LK0/m;->b:LK0/m;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, LK0/m;->c(Landroid/app/Activity;)LK0/k;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LM0/f;->b(LK0/k;Landroidx/window/extensions/layout/WindowLayoutInfo;)LK0/j;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Display Features are only supported after Q. Display features for non-Activity contexts are not expected to be reported on devices running Q."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(LK0/k;LH0/b;)Z
    .locals 3

    invoke-virtual {p1}, LK0/k;->a()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2}, LH0/b;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, LH0/b;->d()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, LH0/b;->a()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, LH0/b;->d()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p2}, LH0/b;->a()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, LH0/b;->d()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p2}, LH0/b;->a()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
