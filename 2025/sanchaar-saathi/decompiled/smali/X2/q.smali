.class public LX2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX2/q$g;,
        LX2/q$f;,
        LX2/q$b;,
        LX2/q$c;,
        LX2/q$e;,
        LX2/q$d;
    }
.end annotation


# instance fields
.field public final a:LY2/j;

.field public b:LX2/q$g;

.field public final c:LY2/j$c;


# direct methods
.method public constructor <init>(LP2/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX2/q$a;

    invoke-direct {v0, p0}, LX2/q$a;-><init>(LX2/q;)V

    iput-object v0, p0, LX2/q;->c:LY2/j$c;

    new-instance v1, LY2/j;

    const-string v2, "flutter/platform_views"

    sget-object v3, LY2/p;->b:LY2/p;

    invoke-direct {v1, p1, v2, v3}, LY2/j;-><init>(LY2/b;Ljava/lang/String;LY2/k;)V

    iput-object v1, p0, LX2/q;->a:LY2/j;

    invoke-virtual {v1, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public static synthetic a(LX2/q;)LX2/q$g;
    .locals 0

    iget-object p0, p0, LX2/q;->b:LX2/q$g;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LX2/q;->c(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LM2/b;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(I)V
    .locals 2

    iget-object v0, p0, LX2/q;->a:LY2/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "viewFocused"

    invoke-virtual {v0, v1, p1}, LY2/j;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(LX2/q$g;)V
    .locals 0

    iput-object p1, p0, LX2/q;->b:LX2/q$g;

    return-void
.end method
