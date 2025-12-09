.class public final Li0/f$b;
.super Li0/f$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Z

.field public c:Z

.field public d:Li0/v$a;


# direct methods
.method public constructor <init>(Li0/Z$d;Z)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Li0/f$f;-><init>(Li0/Z$d;)V

    iput-boolean p2, p0, Li0/f$b;->b:Z

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Li0/v$a;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/f$b;->c:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Li0/f$b;->d:Li0/v$a;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Li0/f$f;->a()Li0/Z$d;

    move-result-object v0

    invoke-virtual {v0}, Li0/Z$d;->i()Li0/p;

    move-result-object v0

    invoke-virtual {p0}, Li0/f$f;->a()Li0/Z$d;

    move-result-object v1

    invoke-virtual {v1}, Li0/Z$d;->h()Li0/Z$d$b;

    move-result-object v1

    sget-object v2, Li0/Z$d$b;->g:Li0/Z$d$b;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Li0/f$b;->b:Z

    invoke-static {p1, v0, v1, v2}, Li0/v;->b(Landroid/content/Context;Li0/p;ZZ)Li0/v$a;

    move-result-object p1

    iput-object p1, p0, Li0/f$b;->d:Li0/v$a;

    iput-boolean v3, p0, Li0/f$b;->c:Z

    :goto_1
    return-object p1
.end method
