.class public final LN0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN0/a$a;
    }
.end annotation


# static fields
.field public static final b:LN0/a$a;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:LH0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN0/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN0/a$a;-><init>(Lv3/g;)V

    sput-object v0, LN0/a;->b:LN0/a$a;

    const-class v0, LN0/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LN0/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LH0/j;)V
    .locals 1

    const-string v0, "verificationMode"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/a;->a:LH0/j;

    return-void
.end method

.method public synthetic constructor <init>(LH0/j;ILv3/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, LH0/j;->g:LH0/j;

    :cond_0
    invoke-direct {p0, p1}, LN0/a;-><init>(LH0/j;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/window/sidecar/SidecarDeviceState;Landroidx/window/sidecar/SidecarDeviceState;)Z
    .locals 3

    invoke-static {p1, p2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    :cond_2
    sget-object v2, LN0/a;->b:LN0/a$a;

    invoke-virtual {v2, p1}, LN0/a$a;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result p1

    invoke-virtual {v2, p2}, LN0/a$a;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    return v1
.end method

.method public final b(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDisplayFeature;)Z
    .locals 3

    invoke-static {p1, p2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v1

    invoke-virtual {p2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p0, v4, v5}, LN0/a;->b(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDisplayFeature;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final d(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Z
    .locals 1

    invoke-static {p1, p2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    :cond_2
    sget-object v0, LN0/a;->b:LN0/a$a;

    invoke-virtual {v0, p1}, LN0/a$a;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p2}, LN0/a$a;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LN0/a;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final e(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)LK0/j;
    .locals 2

    const-string v0, "state"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, LK0/j;

    invoke-static {}, Li3/o;->h()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, LK0/j;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_0
    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    sget-object v1, LN0/a;->b:LN0/a$a;

    invoke-virtual {v1, p2}, LN0/a$a;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result p2

    invoke-virtual {v1, v0, p2}, LN0/a$a;->d(Landroidx/window/sidecar/SidecarDeviceState;I)V

    invoke-virtual {v1, p1}, LN0/a$a;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, LN0/a;->f(Ljava/util/List;Landroidx/window/sidecar/SidecarDeviceState;)Ljava/util/List;

    move-result-object p1

    new-instance p2, LK0/j;

    invoke-direct {p2, p1}, LK0/j;-><init>(Ljava/util/List;)V

    return-object p2
.end method

.method public final f(Ljava/util/List;Landroidx/window/sidecar/SidecarDeviceState;)Ljava/util/List;
    .locals 2

    const-string v0, "sidecarDisplayFeatures"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p0, v1, p2}, LN0/a;->g(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)LK0/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final g(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)LK0/a;
    .locals 8

    const-string v0, "feature"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LH0/h;->a:LH0/h$a;

    sget-object v3, LN0/a;->c:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {v3, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, LN0/a;->a:LH0/j;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, LH0/h$a;->b(LH0/h$a;Ljava/lang/Object;Ljava/lang/String;LH0/j;LH0/g;ILjava/lang/Object;)LH0/h;

    move-result-object v0

    const-string v1, "Type must be either TYPE_FOLD or TYPE_HINGE"

    sget-object v2, LN0/a$b;->f:LN0/a$b;

    invoke-virtual {v0, v1, v2}, LH0/h;->c(Ljava/lang/String;Lu3/l;)LH0/h;

    move-result-object v0

    const-string v1, "Feature bounds must not be 0"

    sget-object v2, LN0/a$c;->f:LN0/a$c;

    invoke-virtual {v0, v1, v2}, LH0/h;->c(Ljava/lang/String;Lu3/l;)LH0/h;

    move-result-object v0

    const-string v1, "TYPE_FOLD must have 0 area"

    sget-object v2, LN0/a$d;->f:LN0/a$d;

    invoke-virtual {v0, v1, v2}, LH0/h;->c(Ljava/lang/String;Lu3/l;)LH0/h;

    move-result-object v0

    const-string v1, "Feature be pinned to either left or top"

    sget-object v2, LN0/a$e;->f:LN0/a$e;

    invoke-virtual {v0, v1, v2}, LH0/h;->c(Ljava/lang/String;Lu3/l;)LH0/h;

    move-result-object v0

    invoke-virtual {v0}, LH0/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/sidecar/SidecarDisplayFeature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v0, LK0/d$b;->b:LK0/d$b$a;

    invoke-virtual {v0}, LK0/d$b$a;->b()LK0/d$b;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, LK0/d$b;->b:LK0/d$b$a;

    invoke-virtual {v0}, LK0/d$b$a;->a()LK0/d$b;

    move-result-object v0

    :goto_0
    sget-object v4, LN0/a;->b:LN0/a$a;

    invoke-virtual {v4, p2}, LN0/a$a;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result p2

    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 v2, 0x4

    if-eq p2, v2, :cond_5

    sget-object p2, LK0/c$b;->c:LK0/c$b;

    goto :goto_1

    :cond_3
    sget-object p2, LK0/c$b;->c:LK0/c$b;

    goto :goto_1

    :cond_4
    sget-object p2, LK0/c$b;->d:LK0/c$b;

    :goto_1
    new-instance v1, LK0/d;

    new-instance v2, LH0/b;

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    const-string v3, "feature.rect"

    invoke-static {p1, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, LH0/b;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v1, v2, v0, p2}, LK0/d;-><init>(LH0/b;LK0/d$b;LK0/c$b;)V

    :cond_5
    return-object v1
.end method
