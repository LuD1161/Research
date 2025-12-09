.class public abstract LD3/O0;
.super Ll3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD3/O0$a;
    }
.end annotation


# static fields
.field public static final f:LD3/O0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD3/O0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LD3/O0$a;-><init>(Lv3/g;)V

    sput-object v0, LD3/O0;->f:LD3/O0$a;

    return-void
.end method
