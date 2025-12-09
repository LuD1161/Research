.class public final Lb1/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final e:Lb1/a;

.field public final f:Ly2/a;


# direct methods
.method public constructor <init>(Lb1/a;Ly2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/a$g;->e:Lb1/a;

    iput-object p2, p0, Lb1/a$g;->f:Ly2/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb1/a$g;->e:Lb1/a;

    iget-object v0, v0, Lb1/a;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb1/a$g;->f:Ly2/a;

    invoke-static {v0}, Lb1/a;->j(Ly2/a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lb1/a;->f:Lb1/a$b;

    iget-object v2, p0, Lb1/a$g;->e:Lb1/a;

    invoke-virtual {v1, v2, p0, v0}, Lb1/a$b;->b(Lb1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb1/a$g;->e:Lb1/a;

    invoke-static {v0}, Lb1/a;->g(Lb1/a;)V

    :cond_1
    return-void
.end method
