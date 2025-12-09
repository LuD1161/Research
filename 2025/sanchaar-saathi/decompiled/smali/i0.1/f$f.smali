.class public abstract Li0/f$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Li0/Z$d;


# direct methods
.method public constructor <init>(Li0/Z$d;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/f$f;->a:Li0/Z$d;

    return-void
.end method


# virtual methods
.method public final a()Li0/Z$d;
    .locals 1

    iget-object v0, p0, Li0/f$f;->a:Li0/Z$d;

    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Li0/f$f;->a:Li0/Z$d;

    invoke-virtual {v0}, Li0/Z$d;->i()Li0/p;

    move-result-object v0

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Li0/Z$d$b;->e:Li0/Z$d$b$a;

    invoke-virtual {v1, v0}, Li0/Z$d$b$a;->a(Landroid/view/View;)Li0/Z$d$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li0/f$f;->a:Li0/Z$d;

    invoke-virtual {v1}, Li0/Z$d;->h()Li0/Z$d$b;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v2, Li0/Z$d$b;->g:Li0/Z$d$b;

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method
