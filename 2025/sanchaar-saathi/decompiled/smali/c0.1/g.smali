.class public abstract Lc0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc0/g$a;
    }
.end annotation


# static fields
.field public static final a:Lc0/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc0/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc0/g$a;-><init>(Lv3/g;)V

    sput-object v0, Lc0/g;->a:Lc0/g$a;

    return-void
.end method
