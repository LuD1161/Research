.class public LX2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX2/r$b;
    }
.end annotation


# instance fields
.field public final a:LY2/j;

.field public final b:Landroid/content/pm/PackageManager;

.field public c:LX2/r$b;

.field public final d:LY2/j$c;


# direct methods
.method public constructor <init>(LP2/a;Landroid/content/pm/PackageManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX2/r$a;

    invoke-direct {v0, p0}, LX2/r$a;-><init>(LX2/r;)V

    iput-object v0, p0, LX2/r;->d:LY2/j$c;

    iput-object p2, p0, LX2/r;->b:Landroid/content/pm/PackageManager;

    new-instance p2, LY2/j;

    const-string v1, "flutter/processtext"

    sget-object v2, LY2/p;->b:LY2/p;

    invoke-direct {p2, p1, v1, v2}, LY2/j;-><init>(LY2/b;Ljava/lang/String;LY2/k;)V

    iput-object p2, p0, LX2/r;->a:LY2/j;

    invoke-virtual {p2, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public static synthetic a(LX2/r;)LX2/r$b;
    .locals 0

    iget-object p0, p0, LX2/r;->c:LX2/r$b;

    return-object p0
.end method


# virtual methods
.method public b(LX2/r$b;)V
    .locals 0

    iput-object p1, p0, LX2/r;->c:LX2/r$b;

    return-void
.end method
