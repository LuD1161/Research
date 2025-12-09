.class public LX2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LY2/j;

.field public b:Ljava/util/Map;

.field public final c:LY2/j$c;


# direct methods
.method public constructor <init>(LP2/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX2/g$a;

    invoke-direct {v0, p0}, LX2/g$a;-><init>(LX2/g;)V

    iput-object v0, p0, LX2/g;->c:LY2/j$c;

    new-instance v1, LY2/j;

    const-string v2, "flutter/deferredcomponent"

    sget-object v3, LY2/p;->b:LY2/p;

    invoke-direct {v1, p1, v2, v3}, LY2/j;-><init>(LY2/b;Ljava/lang/String;LY2/k;)V

    iput-object v1, p0, LX2/g;->a:LY2/j;

    invoke-virtual {v1, v0}, LY2/j;->e(LY2/j$c;)V

    invoke-static {}, LM2/a;->e()LM2/a;

    move-result-object p1

    invoke-virtual {p1}, LM2/a;->a()LQ2/a;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LX2/g;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(LX2/g;)LQ2/a;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method
