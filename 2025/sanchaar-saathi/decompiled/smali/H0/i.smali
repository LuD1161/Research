.class public final LH0/i;
.super LH0/h;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/String;

.field public final d:LH0/j;

.field public final e:LH0/g;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;LH0/j;LH0/g;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LH0/h;-><init>()V

    iput-object p1, p0, LH0/i;->b:Ljava/lang/Object;

    iput-object p2, p0, LH0/i;->c:Ljava/lang/String;

    iput-object p3, p0, LH0/i;->d:LH0/j;

    iput-object p4, p0, LH0/i;->e:LH0/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LH0/i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;Lu3/l;)LH0/h;
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LH0/i;->b:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    new-instance p2, LH0/f;

    iget-object v1, p0, LH0/i;->b:Ljava/lang/Object;

    iget-object v2, p0, LH0/i;->c:Ljava/lang/String;

    iget-object v4, p0, LH0/i;->e:LH0/g;

    iget-object v5, p0, LH0/i;->d:LH0/j;

    move-object v0, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH0/f;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;LH0/g;LH0/j;)V

    :goto_0
    return-object p2
.end method
