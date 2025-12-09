.class public LX2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX2/t$b;
    }
.end annotation


# instance fields
.field public final a:LY2/j;

.field public b:LX2/t$b;

.field public final c:LY2/j$c;


# direct methods
.method public constructor <init>(LP2/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX2/t$a;

    invoke-direct {v0, p0}, LX2/t$a;-><init>(LX2/t;)V

    iput-object v0, p0, LX2/t;->c:LY2/j$c;

    new-instance v1, LY2/j;

    const-string v2, "flutter/scribe"

    sget-object v3, LY2/f;->a:LY2/f;

    invoke-direct {v1, p1, v2, v3}, LY2/j;-><init>(LY2/b;Ljava/lang/String;LY2/k;)V

    iput-object v1, p0, LX2/t;->a:LY2/j;

    invoke-virtual {v1, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public static synthetic a(LX2/t;)LX2/t$b;
    .locals 0

    iget-object p0, p0, LX2/t;->b:LX2/t$b;

    return-object p0
.end method

.method public static synthetic b(LX2/t;LY2/i;LY2/j$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LX2/t;->e(LY2/i;LY2/j$d;)V

    return-void
.end method

.method public static synthetic c(LX2/t;LY2/i;LY2/j$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LX2/t;->f(LY2/i;LY2/j$d;)V

    return-void
.end method

.method public static synthetic d(LX2/t;LY2/i;LY2/j$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LX2/t;->h(LY2/i;LY2/j$d;)V

    return-void
.end method


# virtual methods
.method public final e(LY2/i;LY2/j$d;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, LX2/t;->b:LX2/t$b;

    invoke-interface {p1}, LX2/t$b;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final f(LY2/i;LY2/j$d;)V
    .locals 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    const/4 v1, 0x0

    const-string v2, "error"

    if-ge p1, v0, :cond_0

    const-string p1, "Requires API level 34 or higher."

    invoke-interface {p2, v2, p1, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, LX2/t;->b:LX2/t$b;

    invoke-interface {p1}, LX2/t$b;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public g(LX2/t$b;)V
    .locals 0

    iput-object p1, p0, LX2/t;->b:LX2/t$b;

    return-void
.end method

.method public final h(LY2/i;LY2/j$d;)V
    .locals 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const-string v1, "error"

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    const-string p1, "Requires API level 33 or higher."

    invoke-interface {p2, v1, p1, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, LX2/t;->b:LX2/t$b;

    invoke-interface {p1}, LX2/t$b;->b()V

    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
