.class public final synthetic Lu0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Lu0/C;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lu0/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/B;->e:Ljava/lang/Runnable;

    iput-object p2, p0, Lu0/B;->f:Lu0/C;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lu0/B;->e:Ljava/lang/Runnable;

    iget-object v1, p0, Lu0/B;->f:Lu0/C;

    invoke-static {v0, v1}, Lu0/C;->a(Ljava/lang/Runnable;Lu0/C;)V

    return-void
.end method
