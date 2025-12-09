.class public LX2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX2/j$b;
    }
.end annotation


# instance fields
.field public final a:LY2/j;

.field public b:LX2/j$b;

.field public final c:LY2/j$c;


# direct methods
.method public constructor <init>(LY2/b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX2/j$a;

    invoke-direct {v0, p0}, LX2/j$a;-><init>(LX2/j;)V

    iput-object v0, p0, LX2/j;->c:LY2/j$c;

    new-instance v1, LY2/j;

    const-string v2, "flutter/keyboard"

    sget-object v3, LY2/p;->b:LY2/p;

    invoke-direct {v1, p1, v2, v3}, LY2/j;-><init>(LY2/b;Ljava/lang/String;LY2/k;)V

    iput-object v1, p0, LX2/j;->a:LY2/j;

    invoke-virtual {v1, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public static synthetic a(LX2/j;)LX2/j$b;
    .locals 0

    iget-object p0, p0, LX2/j;->b:LX2/j$b;

    return-object p0
.end method


# virtual methods
.method public b(LX2/j$b;)V
    .locals 0

    iput-object p1, p0, LX2/j;->b:LX2/j$b;

    return-void
.end method
