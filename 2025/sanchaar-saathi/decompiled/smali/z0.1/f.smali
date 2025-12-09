.class public final Lz0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/h$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ly0/h$b;)Ly0/h;
    .locals 7

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz0/d;

    iget-object v2, p1, Ly0/h$b;->a:Landroid/content/Context;

    iget-object v3, p1, Ly0/h$b;->b:Ljava/lang/String;

    iget-object v4, p1, Ly0/h$b;->c:Ly0/h$a;

    iget-boolean v5, p1, Ly0/h$b;->d:Z

    iget-boolean v6, p1, Ly0/h$b;->e:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lz0/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ly0/h$a;ZZ)V

    return-object v0
.end method
