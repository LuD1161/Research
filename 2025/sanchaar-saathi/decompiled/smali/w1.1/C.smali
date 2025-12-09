.class public final Lw1/C;
.super Lw1/q;
.source "SourceFile"


# instance fields
.field public final c:Lv1/e;


# direct methods
.method public constructor <init>(Lv1/e;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lw1/q;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lw1/C;->c:Lv1/e;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lw1/C;->c:Lv1/e;

    invoke-virtual {v0}, Lv1/e;->j()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
