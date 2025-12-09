.class public final Lc0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LD3/I;

.field public final b:Lu3/p;

.field public final c:LF3/d;

.field public final d:Lc0/a;


# direct methods
.method public constructor <init>(LD3/I;Lu3/l;Lu3/p;Lu3/p;)V
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUndeliveredElement"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumeMessage"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/t;->a:LD3/I;

    iput-object p4, p0, Lc0/t;->b:Lu3/p;

    const/4 p4, 0x0

    const/4 v0, 0x6

    const v1, 0x7fffffff

    invoke-static {v1, p4, p4, v0, p4}, LF3/g;->b(ILF3/a;Lu3/l;ILjava/lang/Object;)LF3/d;

    move-result-object p4

    iput-object p4, p0, Lc0/t;->c:LF3/d;

    new-instance p4, Lc0/a;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lc0/a;-><init>(I)V

    iput-object p4, p0, Lc0/t;->d:Lc0/a;

    invoke-interface {p1}, LD3/I;->p()Ll3/i;

    move-result-object p1

    sget-object p4, LD3/p0;->b:LD3/p0$b;

    invoke-interface {p1, p4}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p1

    check-cast p1, LD3/p0;

    if-eqz p1, :cond_0

    new-instance p4, Lc0/t$a;

    invoke-direct {p4, p2, p0, p3}, Lc0/t$a;-><init>(Lu3/l;Lc0/t;Lu3/p;)V

    invoke-interface {p1, p4}, LD3/p0;->j(Lu3/l;)LD3/W;

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lc0/t;)Lu3/p;
    .locals 0

    iget-object p0, p0, Lc0/t;->b:Lu3/p;

    return-object p0
.end method

.method public static final synthetic b(Lc0/t;)LF3/d;
    .locals 0

    iget-object p0, p0, Lc0/t;->c:LF3/d;

    return-object p0
.end method

.method public static final synthetic c(Lc0/t;)Lc0/a;
    .locals 0

    iget-object p0, p0, Lc0/t;->d:Lc0/a;

    return-object p0
.end method

.method public static final synthetic d(Lc0/t;)LD3/I;
    .locals 0

    iget-object p0, p0, Lc0/t;->a:LD3/I;

    return-object p0
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lc0/t;->c:LF3/d;

    invoke-interface {v0, p1}, LF3/t;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, LF3/h$a;

    if-eqz v0, :cond_1

    invoke-static {p1}, LF3/h;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, LF3/n;

    const-string v0, "Channel was closed normally"

    invoke-direct {p1, v0}, LF3/n;-><init>(Ljava/lang/String;)V

    :cond_0
    throw p1

    :cond_1
    invoke-static {p1}, LF3/h;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lc0/t;->d:Lc0/a;

    invoke-virtual {p1}, Lc0/a;->c()I

    move-result p1

    if-nez p1, :cond_2

    iget-object v0, p0, Lc0/t;->a:LD3/I;

    new-instance v3, Lc0/t$b;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lc0/t$b;-><init>(Lc0/t;Ll3/e;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, LD3/g;->b(LD3/I;Ll3/i;LD3/K;Lu3/p;ILjava/lang/Object;)LD3/p0;

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
