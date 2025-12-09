.class public final synthetic Li0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lv3/w;


# direct methods
.method public synthetic constructor <init>(Lv3/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/g;->e:Lv3/w;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Li0/g;->e:Lv3/w;

    invoke-static {v0}, Li0/f$g;->k(Lv3/w;)V

    return-void
.end method
