.class public final Lg0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/h;


# instance fields
.field public final a:Lc0/h;


# direct methods
.method public constructor <init>(Lc0/h;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/d;->a:Lc0/h;

    return-void
.end method


# virtual methods
.method public a(Lu3/p;Ll3/e;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg0/d;->a:Lc0/h;

    new-instance v1, Lg0/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lg0/d$a;-><init>(Lu3/p;Ll3/e;)V

    invoke-interface {v0, v1, p2}, Lc0/h;->a(Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()LG3/d;
    .locals 1

    iget-object v0, p0, Lg0/d;->a:Lc0/h;

    invoke-interface {v0}, Lc0/h;->b()LG3/d;

    move-result-object v0

    return-object v0
.end method
