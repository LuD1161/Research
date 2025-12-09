.class public LX2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX2/v$b;
    }
.end annotation


# instance fields
.field public final a:LY2/j;

.field public b:LX2/v$b;

.field public final c:LY2/j$c;


# direct methods
.method public constructor <init>(LP2/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX2/v$a;

    invoke-direct {v0, p0}, LX2/v$a;-><init>(LX2/v;)V

    iput-object v0, p0, LX2/v;->c:LY2/j$c;

    new-instance v1, LY2/j;

    const-string v2, "flutter/spellcheck"

    sget-object v3, LY2/p;->b:LY2/p;

    invoke-direct {v1, p1, v2, v3}, LY2/j;-><init>(LY2/b;Ljava/lang/String;LY2/k;)V

    iput-object v1, p0, LX2/v;->a:LY2/j;

    invoke-virtual {v1, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public static synthetic a(LX2/v;)LX2/v$b;
    .locals 0

    iget-object p0, p0, LX2/v;->b:LX2/v$b;

    return-object p0
.end method


# virtual methods
.method public b(LX2/v$b;)V
    .locals 0

    iput-object p1, p0, LX2/v;->b:LX2/v$b;

    return-void
.end method
