.class public final LY2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY2/a$e;,
        LY2/a$c;,
        LY2/a$b;,
        LY2/a$d;
    }
.end annotation


# instance fields
.field public final a:LY2/b;

.field public final b:Ljava/lang/String;

.field public final c:LY2/h;

.field public final d:LY2/b$c;


# direct methods
.method public constructor <init>(LY2/b;Ljava/lang/String;LY2/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    return-void
.end method

.method public constructor <init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LY2/a;->a:LY2/b;

    .line 4
    iput-object p2, p0, LY2/a;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, LY2/a;->c:LY2/h;

    .line 6
    iput-object p4, p0, LY2/a;->d:LY2/b$c;

    return-void
.end method

.method public static synthetic a(LY2/a;)LY2/h;
    .locals 0

    iget-object p0, p0, LY2/a;->c:LY2/h;

    return-object p0
.end method

.method public static synthetic b(LY2/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LY2/a;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LY2/a;->d(Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public d(Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    iget-object v0, p0, LY2/a;->a:LY2/b;

    iget-object v1, p0, LY2/a;->b:Ljava/lang/String;

    iget-object v2, p0, LY2/a;->c:LY2/h;

    invoke-interface {v2, p1}, LY2/h;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, LY2/a$c;

    invoke-direct {v3, p0, p2, v2}, LY2/a$c;-><init>(LY2/a;LY2/a$e;LY2/a$a;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v0, v1, p1, v2}, LY2/b;->c(Ljava/lang/String;Ljava/nio/ByteBuffer;LY2/b$b;)V

    return-void
.end method

.method public e(LY2/a$d;)V
    .locals 4

    iget-object v0, p0, LY2/a;->d:LY2/b$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, LY2/a;->a:LY2/b;

    iget-object v2, p0, LY2/a;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, LY2/a$b;

    invoke-direct {v3, p0, p1, v1}, LY2/a$b;-><init>(LY2/a;LY2/a$d;LY2/a$a;)V

    move-object v1, v3

    :goto_0
    iget-object p1, p0, LY2/a;->d:LY2/b$c;

    invoke-interface {v0, v2, v1, p1}, LY2/b;->b(Ljava/lang/String;LY2/b$a;LY2/b$c;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, LY2/a;->a:LY2/b;

    iget-object v2, p0, LY2/a;->b:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, LY2/a$b;

    invoke-direct {v3, p0, p1, v1}, LY2/a$b;-><init>(LY2/a;LY2/a$d;LY2/a$a;)V

    move-object v1, v3

    :goto_1
    invoke-interface {v0, v2, v1}, LY2/b;->e(Ljava/lang/String;LY2/b$a;)V

    :goto_2
    return-void
.end method
