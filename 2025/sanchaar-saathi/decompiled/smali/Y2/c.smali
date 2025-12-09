.class public final LY2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY2/c$c;,
        LY2/c$d;,
        LY2/c$b;
    }
.end annotation


# instance fields
.field public final a:LY2/b;

.field public final b:Ljava/lang/String;

.field public final c:LY2/k;

.field public final d:LY2/b$c;


# direct methods
.method public constructor <init>(LY2/b;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, LY2/p;->b:LY2/p;

    invoke-direct {p0, p1, p2, v0}, LY2/c;-><init>(LY2/b;Ljava/lang/String;LY2/k;)V

    return-void
.end method

.method public constructor <init>(LY2/b;Ljava/lang/String;LY2/k;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, LY2/c;-><init>(LY2/b;Ljava/lang/String;LY2/k;LY2/b$c;)V

    return-void
.end method

.method public constructor <init>(LY2/b;Ljava/lang/String;LY2/k;LY2/b$c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LY2/c;->a:LY2/b;

    .line 5
    iput-object p2, p0, LY2/c;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, LY2/c;->c:LY2/k;

    .line 7
    iput-object p4, p0, LY2/c;->d:LY2/b$c;

    return-void
.end method

.method public static synthetic a(LY2/c;)LY2/k;
    .locals 0

    iget-object p0, p0, LY2/c;->c:LY2/k;

    return-object p0
.end method

.method public static synthetic b(LY2/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LY2/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(LY2/c;)LY2/b;
    .locals 0

    iget-object p0, p0, LY2/c;->a:LY2/b;

    return-object p0
.end method


# virtual methods
.method public d(LY2/c$d;)V
    .locals 3

    iget-object v0, p0, LY2/c;->d:LY2/b$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, LY2/c;->a:LY2/b;

    iget-object v2, p0, LY2/c;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LY2/c$c;

    invoke-direct {v1, p0, p1}, LY2/c$c;-><init>(LY2/c;LY2/c$d;)V

    :goto_0
    iget-object p1, p0, LY2/c;->d:LY2/b$c;

    invoke-interface {v0, v2, v1, p1}, LY2/b;->b(Ljava/lang/String;LY2/b$a;LY2/b$c;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, LY2/c;->a:LY2/b;

    iget-object v2, p0, LY2/c;->b:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, LY2/c$c;

    invoke-direct {v1, p0, p1}, LY2/c$c;-><init>(LY2/c;LY2/c$d;)V

    :goto_1
    invoke-interface {v0, v2, v1}, LY2/b;->e(Ljava/lang/String;LY2/b$a;)V

    :goto_2
    return-void
.end method
