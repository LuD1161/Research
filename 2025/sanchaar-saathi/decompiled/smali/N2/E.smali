.class public LN2/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/editing/h$a;
.implements LX2/j$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN2/E$e;,
        LN2/E$d;,
        LN2/E$c;,
        LN2/E$b;
    }
.end annotation


# instance fields
.field public final a:[LN2/E$d;

.field public final b:Ljava/util/HashSet;

.field public final c:LN2/E$e;


# direct methods
.method public constructor <init>(LN2/E$e;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LN2/E;->b:Ljava/util/HashSet;

    iput-object p1, p0, LN2/E;->c:LN2/E$e;

    new-instance v0, LN2/D;

    invoke-interface {p1}, LN2/E$e;->getBinaryMessenger()LY2/b;

    move-result-object v1

    invoke-direct {v0, v1}, LN2/D;-><init>(LY2/b;)V

    new-instance v1, LN2/y;

    new-instance v2, LX2/i;

    invoke-interface {p1}, LN2/E$e;->getBinaryMessenger()LY2/b;

    move-result-object v3

    invoke-direct {v2, v3}, LX2/i;-><init>(LY2/b;)V

    invoke-direct {v1, v2}, LN2/y;-><init>(LX2/i;)V

    const/4 v2, 0x2

    new-array v2, v2, [LN2/E$d;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v2, p0, LN2/E;->a:[LN2/E$d;

    new-instance v0, LX2/j;

    invoke-interface {p1}, LN2/E$e;->getBinaryMessenger()LY2/b;

    move-result-object p1

    invoke-direct {v0, p1}, LX2/j;-><init>(LY2/b;)V

    invoke-virtual {v0, p0}, LX2/j;->b(LX2/j$b;)V

    return-void
.end method

.method public static synthetic c(LN2/E;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, LN2/E;->e(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, LN2/E;->a:[LN2/E$d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, LN2/D;

    invoke-virtual {v0}, LN2/D;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, LN2/E;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LN2/E;->a:[LN2/E$d;

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v0, LN2/E$c;

    invoke-direct {v0, p0, p1}, LN2/E$c;-><init>(LN2/E;Landroid/view/KeyEvent;)V

    iget-object v2, p0, LN2/E;->a:[LN2/E$d;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v0}, LN2/E$c;->a()LN2/E$d$a;

    move-result-object v5

    invoke-interface {v4, p1, v5}, LN2/E$d;->a(Landroid/view/KeyEvent;LN2/E$d$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, LN2/E;->e(Landroid/view/KeyEvent;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, LN2/E;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A KeyboardManager was destroyed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unhandled redispatch event(s)."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardManager"

    invoke-static {v1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, LN2/E;->c:LN2/E$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, LN2/E$e;->c(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN2/E;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LN2/E;->c:LN2/E$e;

    invoke-interface {v0, p1}, LN2/E$e;->a(Landroid/view/KeyEvent;)V

    iget-object v0, p0, LN2/E;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "KeyboardManager"

    const-string v0, "A redispatched key event was consumed before reaching KeyboardManager"

    invoke-static {p1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
