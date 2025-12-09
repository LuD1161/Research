.class public LX2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:[B

.field public c:LY2/j;

.field public d:LY2/j$d;

.field public e:Z

.field public f:Z

.field public final g:LY2/j$c;


# direct methods
.method public constructor <init>(LP2/a;Z)V
    .locals 3

    .line 1
    new-instance v0, LY2/j;

    const-string v1, "flutter/restoration"

    sget-object v2, LY2/p;->b:LY2/p;

    invoke-direct {v0, p1, v1, v2}, LY2/j;-><init>(LY2/b;Ljava/lang/String;LY2/k;)V

    invoke-direct {p0, v0, p2}, LX2/s;-><init>(LY2/j;Z)V

    return-void
.end method

.method public constructor <init>(LY2/j;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LX2/s;->e:Z

    .line 4
    iput-boolean v0, p0, LX2/s;->f:Z

    .line 5
    new-instance v0, LX2/s$b;

    invoke-direct {v0, p0}, LX2/s$b;-><init>(LX2/s;)V

    iput-object v0, p0, LX2/s;->g:LY2/j$c;

    .line 6
    iput-object p1, p0, LX2/s;->c:LY2/j;

    .line 7
    iput-boolean p2, p0, LX2/s;->a:Z

    .line 8
    invoke-virtual {p1, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public static synthetic a(LX2/s;)[B
    .locals 0

    iget-object p0, p0, LX2/s;->b:[B

    return-object p0
.end method

.method public static synthetic b(LX2/s;[B)[B
    .locals 0

    iput-object p1, p0, LX2/s;->b:[B

    return-object p1
.end method

.method public static synthetic c(LX2/s;Z)Z
    .locals 0

    iput-boolean p1, p0, LX2/s;->f:Z

    return p1
.end method

.method public static synthetic d(LX2/s;)Z
    .locals 0

    iget-boolean p0, p0, LX2/s;->e:Z

    return p0
.end method

.method public static synthetic e(LX2/s;[B)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, LX2/s;->i([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LX2/s;LY2/j$d;)LY2/j$d;
    .locals 0

    iput-object p1, p0, LX2/s;->d:LY2/j$d;

    return-object p1
.end method


# virtual methods
.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LX2/s;->b:[B

    return-void
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, LX2/s;->b:[B

    return-object v0
.end method

.method public final i([B)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public j([B)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LX2/s;->e:Z

    iget-object v0, p0, LX2/s;->d:LY2/j$d;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LX2/s;->i([B)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, LY2/j$d;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, LX2/s;->d:LY2/j$d;

    iput-object p1, p0, LX2/s;->b:[B

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LX2/s;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LX2/s;->c:LY2/j;

    invoke-virtual {p0, p1}, LX2/s;->i([B)Ljava/util/Map;

    move-result-object v1

    new-instance v2, LX2/s$a;

    invoke-direct {v2, p0, p1}, LX2/s$a;-><init>(LX2/s;[B)V

    const-string p1, "push"

    invoke-virtual {v0, p1, v1, v2}, LY2/j;->d(Ljava/lang/String;Ljava/lang/Object;LY2/j$d;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, LX2/s;->b:[B

    :goto_0
    return-void
.end method
